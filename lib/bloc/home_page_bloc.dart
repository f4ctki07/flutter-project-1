import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_1/i18n/strings.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../post/domain/entity/post.dart';
import '../post/domain/usecase/get_posts_use_case.dart';

part 'home_page_bloc.freezed.dart'; // Freezed가 생성할 파일

// --- Event 정의 ---
@freezed
abstract class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.load() = LoadEvent; // 'Load' 이벤트를 정의
}

// --- State 정의 ---
@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState.init() = StateInit; // 초기 상태
  const factory HomePageState.loading() = StateLoading; // 로딩 중 상태
  const factory HomePageState.done({required List<Post> items}) = StateDone; // 성공 상태 (데이터 포함)
  const factory HomePageState.error({required String message}) = StateError; // 에러 상태 (메시지 포함)
}

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final GetPostsUseCase getPostsUseCase;

  // 초기 상태를 StateInit()으로 설정
  HomePageBloc(this.getPostsUseCase): super(const HomePageState.init()) {
    // 'LoadEvent'가 들어왔을 때 실행할 로직을 등록
    on<LoadEvent>(_onLoad);
  }

  Future<void> _onLoad(LoadEvent event, Emitter<HomePageState> emit) async {
    try {
      // 1. 로딩 상태로 변경하여 UI에 로딩 인디케이터를 표시하도록 함
      emit(const HomePageState.loading());

      // 2. 데이터 로딩 (실제로는 API 호출)
      // 여기서는 2초 지연으로 API 호출을 흉내 냅니다.
      // await Future.delayed(const Duration(seconds: 2));

      // throw Exception('');

      final postList = await getPostsUseCase();
      // 3. 성공 상태로 변경하고, 로드된 데이터를 함께 전달
      emit(HomePageState.done(items: postList));

    } catch (e) {
      // 4. 에러 발생 시 에러 상태로 변경하고, 에러 메시지를 전달
      emit(HomePageState.error(message: t.home.error(error: e.toString())));
    }
  }
}

