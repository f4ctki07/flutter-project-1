import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_1/widgets/PostContainer.dart';

import 'bloc/home_page_bloc.dart';
import 'i18n/strings.g.dart';

Widget HomePage(BuildContext context) {
  return BlocBuilder<HomePageBloc, HomePageState>(
    builder: (context, state) {
      // state.when을 사용하면 각 상태에 따라 다른 위젯을 쉽게 반환할 수 있음
      return state.when(
        // 초기 상태
        init: () => Center(child: Text(t.home.initializing)),
        // 로딩 중 상태
        loading: () => const Center(child: CircularProgressIndicator()),
        // 성공 상태
        done: (items) => RefreshIndicator(
          // 화면을 당기면 'load' 이벤트를 다시 발생시켜 새로고침
          onRefresh: () async {
            context.read<HomePageBloc>().add(const HomePageEvent.load());
          },
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  PostContainer(post: items[index]),
                  SizedBox(height: 20)
                ],
              );
            },
          ),
        ),
        // 에러 상태
        error: (message) => Center(
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              ElevatedButton(
                onPressed: () {
                  context.read<HomePageBloc>().add(const HomePageEvent.load());
                },
                child: Text(t.home.retry),
              ),
            ],
          ),
        ),
      );
    },
  );
}