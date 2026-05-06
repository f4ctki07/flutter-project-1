import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_project_1/AppRouter.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MyHomeRoute.page, initial: true),
    AutoRoute(page: PostRoute.page),
    AutoRoute(page: NoticeBoardRoute.page),
    AutoRoute(page: CreateBoardRoute.page),
  ];
}