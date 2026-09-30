import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_1/bloc/home_page_bloc.dart';
import 'package:flutter_project_1/ui/widgets/CenterTitleAppHeader.dart';
import 'package:flutter_project_1/ui/widgets/PostContainer.dart';

import '../i18n/strings.g.dart';

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
        child: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            return state.when(
              init: () => const SizedBox.shrink(),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              done: (postList) {
                final boardPosts = postList
                    .where(
                      (post) => post.type == noticeBoardName,
                )
                    .toList();

                if (boardPosts.isEmpty) {
                  return Center(
                    child: Text(t.home.empty),
                  );
                }

                return ListView.separated(
                  itemCount: boardPosts.length,
                  separatorBuilder: (_, _) =>
                  const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    return PostContainer(
                      post: boardPosts[index],
                    );
                  },
                );
              },
              error: (message) => Center(
                child: Text(message),
              ),
            );
          },
        )
      ),
    );
  }
}