import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/ui/AppRouter.gr.dart';

import '../../post/domain/entity/post.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () { context.pushRoute(PostRoute(post: post)); },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: 
        Padding(
          padding: EdgeInsets.only(left: 14, top: 15, right: 14, bottom: 14),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                Text(
                  post.title,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
/*
                if (post.images.isNotEmpty)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: CachedNetworkWidget(post.images[0])
                  )
                else
*/
                  Text(post.content)
              ],
          ),
        ),
    );
  }
}