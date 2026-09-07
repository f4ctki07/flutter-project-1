import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_project_1/post/domain/entity/post.dart';
import 'package:flutter_project_1/post/domain/repository/post_repository.dart';

class FakePostRepository implements PostRepository {
  @override
  Future<List<Post>> getPosts() async {
    return [
      Post(
        title: '제목',
        content: '내용',
        type: '게시판 1',
        tags: const ['테스트'],
        author: '글쓴이',
        authorId: '1',
        createdAt: DateTime(2026, 9, 8),
        images: const [],
      ),
    ];
  }
}
