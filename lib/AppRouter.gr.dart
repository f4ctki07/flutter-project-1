// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_project_1/CreateBoardScreen.dart' as _i1;
import 'package:flutter_project_1/main.dart' as _i2;
import 'package:flutter_project_1/NoticeBoardScreen.dart' as _i3;
import 'package:flutter_project_1/post/data/model/post.dart' as _i7;
import 'package:flutter_project_1/PostScreen.dart' as _i4;

/// generated route for
/// [_i1.CreateBoardScreen]
class CreateBoardRoute extends _i5.PageRouteInfo<void> {
  const CreateBoardRoute({List<_i5.PageRouteInfo>? children})
    : super(CreateBoardRoute.name, initialChildren: children);

  static const String name = 'CreateBoardRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i1.CreateBoardScreen();
    },
  );
}

/// generated route for
/// [_i2.MyHomeScreen]
class MyHomeRoute extends _i5.PageRouteInfo<void> {
  const MyHomeRoute({List<_i5.PageRouteInfo>? children})
    : super(MyHomeRoute.name, initialChildren: children);

  static const String name = 'MyHomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i2.MyHomeScreen();
    },
  );
}

/// generated route for
/// [_i3.NoticeBoardScreen]
class NoticeBoardRoute extends _i5.PageRouteInfo<NoticeBoardRouteArgs> {
  NoticeBoardRoute({
    _i6.Key? key,
    required String noticeBoardName,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         NoticeBoardRoute.name,
         args: NoticeBoardRouteArgs(key: key, noticeBoardName: noticeBoardName),
         initialChildren: children,
       );

  static const String name = 'NoticeBoardRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NoticeBoardRouteArgs>();
      return _i3.NoticeBoardScreen(
        key: args.key,
        noticeBoardName: args.noticeBoardName,
      );
    },
  );
}

class NoticeBoardRouteArgs {
  const NoticeBoardRouteArgs({this.key, required this.noticeBoardName});

  final _i6.Key? key;

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
/// [_i4.PostScreen]
class PostRoute extends _i5.PageRouteInfo<PostRouteArgs> {
  PostRoute({
    _i6.Key? key,
    required _i7.Post post,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         PostRoute.name,
         args: PostRouteArgs(key: key, post: post),
         initialChildren: children,
       );

  static const String name = 'PostRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostRouteArgs>();
      return _i4.PostScreen(key: args.key, post: args.post);
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.post});

  final _i6.Key? key;

  final _i7.Post post;

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
