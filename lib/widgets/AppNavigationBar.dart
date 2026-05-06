import 'package:flutter/material.dart';
import 'package:flutter_project_1/gen/assets.gen.dart';

class AppNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const AppNavigationBar({super.key, required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: selectedIndex == 0 ? Assets.icons.homeFilled.svg() : Assets.icons.homeOutlined.svg(), label: ""),
        BottomNavigationBarItem(icon: selectedIndex == 1 ? Assets.icons.viewGridFilled.svg() : Assets.icons.viewGridOutlined.svg(), label: ""),
        BottomNavigationBarItem(icon: selectedIndex == 2 ? Assets.icons.accountFilled.svg() : Assets.icons.accountOutlined.svg(), label: ""),
      ],
      currentIndex: selectedIndex,
      onTap: onTap,
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}