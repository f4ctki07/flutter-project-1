import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/post_model.dart';

part 'post_apis.g.dart';

@RestApi()
abstract class PostApi {
  factory PostApi(Dio dio, {String baseUrl}) = _PostApi;
  
  @GET('/posts')
  Future<List<PostModel>> getPosts();
}
