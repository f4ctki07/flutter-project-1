import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  // final String uuid;
  final String title;
  final String content;
  final String type;
  final List<String> tags;
  final String author;
  final String authorId;
  // final List<UserModel> participants;
  // final int maxPaticipants;
  final DateTime createdAt;
  final List<String> images;

  Post({
    // required this.uuid,
    required this.title,
    required this.content,
    required this.type,
    required this.tags,
    required this.author,
    required this.authorId,
    // required this.participants,
    // required this.maxPaticipants,
    required this.createdAt,
    // required this.deadline,
    required this.images,
  });

  factory Post.fromJson(Map<String, dynamic> json) =>_$PostFromJson(json);

  Map<String, dynamic> toPost() => _$PostToJson(this);
}