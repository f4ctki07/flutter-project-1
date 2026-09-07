import 'package:injectable/injectable.dart';

import '../entity/post.dart';
import '../repository/post_repository.dart';

@injectable
class GetPostsUseCase {
  final PostRepository _repository;

  GetPostsUseCase(this._repository);

  Future<List<Post>> call() {
    return _repository.getPosts();
  }
}