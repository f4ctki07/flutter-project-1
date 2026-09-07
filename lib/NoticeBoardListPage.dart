import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/AppRouter.gr.dart';
import 'package:flutter_project_1/widgets/CustomButton.dart';

List<String> noticeBoardList = [ '게시판 1' ];
final ValueNotifier<int> noticeBoardListNotifier = ValueNotifier<int>(0);

Widget NoticeBoardListPage(BuildContext context) {
  return ValueListenableBuilder(
    valueListenable: noticeBoardListNotifier,
    builder: (context, value, child) {
      return ListView.builder(
        itemCount: noticeBoardList.length,
        itemBuilder: (context, index) {
          return CustomButton(label: noticeBoardList[index], onPressed: () { context.pushRoute(NoticeBoardRoute(noticeBoardName: noticeBoardList[index])); });
          //
        },
      );
    }
  );
}