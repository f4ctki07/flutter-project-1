import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/NoticeBoardListPage.dart';
import 'package:flutter_project_1/i18n/strings.g.dart';
import 'package:flutter_project_1/widgets/CenterTitleAppHeader.dart';
import 'package:flutter_project_1/widgets/Input.dart';

@RoutePage()
class CreateBoardScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CenterTitleAppHeader(title: t.boards.create, action: TextButton(onPressed: () { noticeBoardList.add(_controller.text); noticeBoardListNotifier.value++; context.pop(); }, child: Text('완료'))),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t.boards.name),
            Input(label: 'label', controller: _controller)
          ],
        ),
      ),
    );
  }  
}