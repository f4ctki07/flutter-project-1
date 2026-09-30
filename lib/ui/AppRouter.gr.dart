// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_project_1/post/domain/entity/post.dart' as _i8;
import 'package:flutter_project_1/ui/CreateBoardScreen.dart' as _i1;
import 'package:flutter_project_1/ui/LoginScreen.dart' as _i2;
import 'package:flutter_project_1/ui/MainScreen.dart' as _i3;
import 'package:flutter_project_1/ui/NoticeBoardScreen.dart' as _i4;
import 'package:flutter_project_1/ui/PostScreen.dart' as _i5;

/// generated route for
/// [_i1.CreateBoardScreen]
class CreateBoardRoute extends _i6.PageRouteInfo<void> {
  const CreateBoardRoute({List<_i6.PageRouteInfo>? children})
    : super(CreateBoardRoute.name, initialChildren: children);

  static const String name = 'CreateBoardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i1.CreateBoardScreen();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i3.MainScreen();
    },
  );
}

/// generated route for
/// [_i4.NoticeBoardScreen]
class NoticeBoardRoute extends _i6.PageRouteInfo<NoticeBoardRouteArgs> {
  NoticeBoardRoute({
    _i7.Key? key,
    required String noticeBoardName,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         NoticeBoardRoute.name,
         args: NoticeBoardRouteArgs(key: key, noticeBoardName: noticeBoardName),
         initialChildren: children,
       );

  static const String name = 'NoticeBoardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NoticeBoardRouteArgs>();
      return _i4.NoticeBoardScreen(
        key: args.key,
        noticeBoardName: args.noticeBoardName,
      );
    },
  );
}

class NoticeBoardRouteArgs {
  const NoticeBoardRouteArgs({this.key, required this.noticeBoardName});

  final _i7.Key? key;

  final String noticeBoardName;

  @override
  String toString() {
    return 'NoticeBoardRouteArgs{key: $key, noticeBoardName: $noticeBoardName}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NoticeBoardRouteArgs) return false;
    return key == other.key && noticeBoardName == other.noticeBoardName;
  }

  @override
  int get hashCode => key.hashCode ^ noticeBoardName.hashCode;
}

/// generated route for
/// [_i5.PostScreen]
class PostRoute extends _i6.PageRouteInfo<PostRouteArgs> {
  PostRoute({
    _i7.Key? key,
    required _i8.Post post,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         PostRoute.name,
         args: PostRouteArgs(key: key, post: post),
         initialChildren: children,
       );

  static const String name = 'PostRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostRouteArgs>();
      return _i5.PostScreen(key: args.key, post: args.post);
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.post});

  final _i7.Key? key;

  final _i8.Post post;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, post: $post}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PostRouteArgs) return false;
    return key == other.key && post == other.post;
  }

  @override
  int get hashCode => key.hashCode ^ post.hashCode;
}
