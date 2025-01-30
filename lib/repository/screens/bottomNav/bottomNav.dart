import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/repository/screens/chat/chat.dart';
import 'package:messanger_app/repository/screens/contact/contact.dart';
import 'package:messanger_app/repository/screens/more/more.dart';

class BottomnavScreens extends StatefulWidget {
  const BottomnavScreens({super.key});

  @override
  State<BottomnavScreens> createState() => _BottomnavScreensState();
}

class _BottomnavScreensState extends State<BottomnavScreens> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const ContactScreens(),
    const ChatScreens(),
    const MoreScreens()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_2_alt), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_fill), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_rounded), label: 'More'),
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedIconTheme: IconThemeData(color: Theme.of(context).brightness == Brightness.dark? AppColors.IconColorDarkMode : AppColors.IconColorLightMode ),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark? AppColors.BottomDarkMode : AppColors.BottomLightMode,
      ),
      body: IndexedStack(
        children: pages,
        index: _currentIndex,
      ),
    );
  }
}
