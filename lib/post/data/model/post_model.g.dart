// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
  title: json['title'] as String,
  content: json['content'] as String,
  type: json['type'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  author: json['author'] as String,
  authorId: json['authorId'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
  'title': instance.title,
  'content': instance.content,
  'type': instance.type,
  'tags': instance.tags,
  'author': instance.author,
  'authorId': instance.authorId,
  'createdAt': instance.createdAt.toIso8601String(),
  'images': instance.images,
};
