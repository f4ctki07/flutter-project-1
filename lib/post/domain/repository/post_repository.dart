import '../entity/post.dart';

abstract interface class PostRepository {
  Future<List<Post>> getPosts();
}