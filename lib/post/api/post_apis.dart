import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../data/model/post.dart';

part 'post_apis.g.dart';

@RestApi(baseUrl: "")
abstract class PostApi {
  factory PostApi(Dio dio, {String baseUrl}) = _PostApi;
  
  @GET("/posts")
  Future<List<Post>> getPosts();
}
