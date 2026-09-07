import 'dart:typed_data';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/post/domain/entity/post.dart';
import 'package:flutter_project_1/widgets/CenterTitleAppHeader.dart';
import 'package:flutter_project_1/widgets/HashTag.dart';

@RoutePage()
class PostScreen extends StatelessWidget {
  final Post post;

  const PostScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CenterTitleAppHeader(title: "게시글 이름"),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  spacing: 10,
                  children: [
                    Text(
                      post.author,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      post.createdAt.toString(),
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ]
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: post.tags.map((tag) => HashTag(tag: tag)).toList(),
                  ),
                )
              ],
            ),
            // if (post.images.isNotEmpty) Row(children: post.images.map((url) => CachedNetworkImage(url)).toList()),
            Text(post.content)
          ],
        ),
      ),
    );
  }
}