import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/post.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
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

  PostModel({
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

  factory PostModel.fromJson(Map<String, dynamic> json) =>_$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  Post toEntity() {
    return Post(
      title: title,
      content: content,
      type: type,
      tags: tags,
      author: author,
      authorId: authorId,
      createdAt: createdAt,
      images: images,
    );
  }
}