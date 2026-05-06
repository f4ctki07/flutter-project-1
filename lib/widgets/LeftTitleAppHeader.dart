import 'package:flutter/material.dart';

class LeftTitleAppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const LeftTitleAppHeader({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: actions ?? <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {  }),
          IconButton(icon: Icon(Icons.edit), onPressed: () {  })
        ],
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.grey[100],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}