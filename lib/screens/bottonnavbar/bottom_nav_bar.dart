import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app_ui/domain/constant/app_colors.dart';
import 'package:messanger_app_ui/domain/constant/cubit/themes_cubit.dart';
import 'package:messanger_app_ui/screens/bottonnavbar/chat/chat_screen.dart';
import 'package:messanger_app_ui/screens/bottonnavbar/contact/contact_screen.dart';
import 'package:messanger_app_ui/screens/bottonnavbar/more/more_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List<Widget> pages = const [
    ContactScreen(),
    ChatScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemesCubit>().toggledTheme();
            },
            icon: const Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColor.scafoldDark
            : AppColor.scafoldLight,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        iconSize: 35,
        selectedItemColor: AppColor.buttonDarkMode,
        unselectedItemColor: Theme.of(context).brightness==Brightness.dark? AppColor.scafoldLight:AppColor.scafoldDark ,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person_2_fill,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chat_bubble_text,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: "")
        ],
      ),
    );
  }
}
