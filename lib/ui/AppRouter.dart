import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_project_1/ui/AppRouter.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: MainRoute.page),
    AutoRoute(page: PostRoute.page),
    AutoRoute(page: NoticeBoardRoute.page),
    AutoRoute(page: CreateBoardRoute.page),
  ];
}