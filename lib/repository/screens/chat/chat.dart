import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/repository/screens/view/chat_View.dart';
import 'package:messanger_app/repository/widgets/uihelper.dart';

class ChatScreens extends StatefulWidget {
  const ChatScreens({super.key});

  @override
  State<ChatScreens> createState() => _ChatScreensState();
}

class _ChatScreensState extends State<ChatScreens> {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "3.jpg",
      "name": "Jane Smith",
      "msg": "coder",
      "date": "today",
      "msgCount": "1"
    },
    {
      "img": "4.jpg",
      "name": "Michael Johnson",
      "msg": "Online aaja now",
      "date": "17/24",
      "msgCount": "2"
    },
    {
      "img": "5.jpg",
      "name": "Emily Davis",
      "msg": "chal ",
      "date": "yesterday",
      "msgCount": "8"
    }
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
            text: "Chats",
            fontSize: 18,
            fontFamily: "bold",
            fontWeight: FontWeight.bold),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_chat_unread_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          //?* stories
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              // ! 1Story
              Column(
                children: [
                  UiHelper.CustomImage(
                      imgUrl: "3.jpg", Height: 80, Width: 80, radius: 25),
                  const SizedBox(
                    height: 5,
                  ),
                  UiHelper.CustomText(
                      context: context,
                      text: "Your Story",
                      fontSize: 10,
                      fontFamily: "bold",
                      fontWeight: FontWeight.bold)
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              // ! 2 Story
              Column(
                children: [
                  UiHelper.CustomImage(
                      imgUrl: "4.jpg", Height: 80, Width: 80, radius: 25),
                  const SizedBox(
                    height: 5,
                  ),
                  UiHelper.CustomText(
                      context: context,
                      text: "John Doe",
                      fontSize: 10,
                      fontFamily: "bold",
                      fontWeight: FontWeight.bold)
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              // ! 3 Story
              Column(
                children: [
                  UiHelper.CustomImage(
                      imgUrl: "5.jpg", Height: 80, Width: 80, radius: 25),
                  const SizedBox(
                    height: 5,
                  ),
                  UiHelper.CustomText(
                      context: context,
                      text: "Emily",
                      fontSize: 10,
                      fontFamily: "bold",
                      fontWeight: FontWeight.bold)
                ],
              ),
            ],
          ),
          //! line
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 2,
            decoration: const BoxDecoration(color: Color(0XFFADB5DB)),
          ),
          //* input field
          const SizedBox(
            height: 30,
          ),
          UiHelper.CustomTextFeild(
              context: context,
              icondata: Icons.search,
              controller: searchController,
              text: "Search",
              textinputType: TextInputType.name),
          //* contact list
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: arrContacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: ListTile(
                      onTap: () {
                        //* Chat open
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatPage(
                              name: arrContacts[index]["name"].toString(),
                              img: arrContacts[index]["img"].toString(),
                            ),
                          ),
                        );
                      },
                      leading: UiHelper.CustomImage(
                          imgUrl: arrContacts[index]["img"].toString(),
                          radius: 20),
                      title: UiHelper.CustomText(
                          context: context,
                          text: arrContacts[index]["name"].toString(),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      subtitle: UiHelper.CustomText(
                          context: context,
                          text: arrContacts[index]["msg"].toString(),
                          fontSize: 12,
                          color: const Color(0XFFADB5BD)),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UiHelper.CustomText(
                              context: context,
                              text: arrContacts[index]["date"].toString(),
                              fontSize: 10,
                              color: const Color(0XFFA4A4A4)),
                          const SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: const Color(0XFFD2D5F9),
                            child: UiHelper.CustomText(
                                context: context,
                                text: arrContacts[index]["msgCount"].toString(),
                                fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
