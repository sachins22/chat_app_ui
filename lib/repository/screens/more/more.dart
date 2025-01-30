import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/domain/constants/cubits/themeCubits.dart';
import 'package:messanger_app/repository/widgets/uihelper.dart';

class MoreScreens extends StatefulWidget {
  const MoreScreens({super.key});

  @override
  State<MoreScreens> createState() => _MoreScreensState();
}

class _MoreScreensState extends State<MoreScreens> {
  final List<Map<String, dynamic>> arrMore = [
    {
      "icon": Icons.person,
      "text": "Account",
      "perIcon": CupertinoIcons.forward
    },
    {
      "icon": CupertinoIcons.chat_bubble,
      "text": "Chat",
      "perIcon": CupertinoIcons.forward
    },
    {
      "icon": CupertinoIcons.brightness,
      "text": "Appearance",
      "perIcon": CupertinoIcons.forward
    },
    {
      "icon": Icons.notifications_none,
      "text": "Notification",
      "perIcon": CupertinoIcons.forward
    },
    {
      "icon": Icons.privacy_tip_outlined,
      "text": "Privacy",
      "perIcon": CupertinoIcons.forward
    },
    {
      "icon": Icons.folder_copy_outlined,
      "text": "Data Usage",
      "perIcon": CupertinoIcons.forward
    },
    {
      "icon": CupertinoIcons.question_circle,
      "text": "Help",
      "perIcon": CupertinoIcons.forward
    },
    {
      "icon": CupertinoIcons.t_bubble,
      "text": "Invite Your Friends",
      "perIcon": CupertinoIcons.forward
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDrak
            : AppColors.scaffoldLight,
        title: UiHelper.CustomText(
          context: context,
          text: 'More',
          fontSize: 18,
          fontFamily: "bold",
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          ListTile(
            leading: UiHelper.CustomImage(
              imgUrl: Theme.of(context).brightness == Brightness.dark
                  ? "5.jpg"
                  : "4.jpg",
              radius: 20,
            ),
            title: UiHelper.CustomText(
              context: context,
              text: "Alamayra Zamzamy",
              fontSize: 14,
              fontFamily: "bold",
              fontWeight: FontWeight.bold,
            ),
            subtitle: UiHelper.CustomText(
              context: context,
              text: "to +62 - 1309 - 1701 - 1922",
              fontSize: 12,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.forward),
            ),
          ),
          const Divider(), // Adds separation for better UI
          Expanded(
            child: ListView.builder(
              itemCount: arrMore.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListTile(
                    leading: Icon(arrMore[index]["icon"] as IconData),
                    title: UiHelper.CustomText(
                        context: context,
                        text: arrMore[index]["text"],
                        fontSize: 14,
                        fontFamily: "bold",
                        fontWeight: FontWeight.bold),
                    trailing: Icon(arrMore[index]["perIcon"] as IconData),
                    onTap: () {
                      if (arrMore[index]["text"] == "Appearance") {
                        BlocProvider.of<Themecubits>(context).toggleTheme();
                      } else {
                        // Baaki options ke liye navigation ya action add karein
                      } // Add navigation or action logic here
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
