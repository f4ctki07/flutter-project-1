import 'package:injectable/injectable.dart';

import '../../domain/entity/post.dart';
import '../../domain/repository/post_repository.dart';
import '../datasource/post_apis.dart';

@LazySingleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  final PostApi _postApi;

  PostRepositoryImpl(this._postApi);

  @override
  Future<List<Post>> getPosts() async {
    final models = await _postApi.getPosts();
    return models.map((model) => model.toEntity()).toList();
  }
}