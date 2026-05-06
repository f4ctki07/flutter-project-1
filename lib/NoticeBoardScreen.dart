import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/post/data/model/post.dart';
import 'package:flutter_project_1/widgets/CenterTitleAppHeader.dart';
import 'package:flutter_project_1/widgets/PostContainer.dart';

import 'main.dart';

@RoutePage()
class NoticeBoardScreen extends StatelessWidget {
  final String noticeBoardName;

  const NoticeBoardScreen({super.key, required this.noticeBoardName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CenterTitleAppHeader(title: noticeBoardName),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: postList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                PostContainer(post: postList[index]),
                SizedBox(height: 20)
              ],
            );
          },
        ),
      ),
    );
  }
}