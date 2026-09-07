import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../post/data/datasource/post_apis.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: 'localhost',
    ),
  );

  @lazySingleton
  PostApi postApi(Dio dio) => PostApi(dio);
}