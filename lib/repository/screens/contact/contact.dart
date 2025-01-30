import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/repository/widgets/uihelper.dart';

class ContactScreens extends StatefulWidget {
  const ContactScreens({super.key});

  @override
  State<ContactScreens> createState() => _ContactScreensState();
}

class _ContactScreensState extends State<ContactScreens> {
  TextEditingController searchController = TextEditingController();
  var arrContacts = [
    {
      "img": "1.jpg",
      "name": "Athalia Putri",
      "lastseen": "Last seen yesterday"
    },
    {"img": "2.jpg", "name": "John Doe", "lastseen": "Last seen 2 hours ago"},
    {
      "img": "3.jpg",
      "name": "Jane Smith",
      "lastseen": "Last seen 5 minutes ago"
    },
    {"img": "4.jpg", "name": "Michael Johnson", "lastseen": "Online now"},
    {"img": "5.jpg", "name": "Emily Davis", "lastseen": "Last seen 3 days ago"}
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
            context: context, text: 'Contact', fontSize: 18),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomTextFeild(
                context: context,
                icondata: Icons.search,
                controller: searchController,
                text: "Search",
                textinputType: TextInputType.name),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: arrContacts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ListTile(
                        leading: UiHelper.CustomImage(
                            imgUrl: arrContacts[index]["img"].toString()),
                        title: UiHelper.CustomText(
                            context: context,
                            text: arrContacts[index]["name"].toString(),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                        subtitle: UiHelper.CustomText(
                            context: context,
                            text: arrContacts[index]["lastseen"].toString(),
                            fontSize: 12,
                            color: const Color(0XFFADB5BD)),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
