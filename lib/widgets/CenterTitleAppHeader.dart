import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CenterTitleAppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? action;

  const CenterTitleAppHeader({super.key, required this.title, this.action});

  @override
  Widget build(BuildContext context) {
    var list = (action != null) ? <Widget>[ action! ] : <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {  }),
          IconButton(icon: Icon(Icons.edit), onPressed: () {  })
        ];
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(onPressed: () { context.pop(); }, icon: Icon(Icons.arrow_back)),
      title: Text(title),
      actions: list,
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.grey[100],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}