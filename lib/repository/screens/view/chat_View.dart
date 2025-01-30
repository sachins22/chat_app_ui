import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_app/domain/constants/app_colors.dart';
import 'package:messanger_app/repository/widgets/uihelper.dart';

class ChatPage extends StatefulWidget {
  final String name;
  final String img;

  const ChatPage({super.key, required this.name, required this.img});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // List to hold the chat messages
  List<String> messages = [
    "Hello!",
    "Hi, How are you?",
    "I'm fine, thanks!"
  ];
  
  // Controller to manage the text input
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.scaffoldDrak
          : AppColors.scaffoldLight,
        title: UiHelper.CustomText(
          context: context,
          text: widget.name,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return chatBubble(messages[index], index % 2 == 0);
              },
            ),
          ),
          messageInputField(),
        ],
      ),
    );
  }

  Widget chatBubble(String message, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isMe ? Colors.blue[200] : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(message, style:const TextStyle(
          color:Colors.black
        ),),
      ),
    );
  }

  Widget messageInputField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child:UiHelper.CustomTextFeild(context: context, controller: _controller, text: "type a message...", textinputType: TextInputType.name, icondata: CupertinoIcons.chat_bubble)
          ),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.blue),
            onPressed: () {
              // If there's text in the input, add it to the chat
              if (_controller.text.isNotEmpty) {
                setState(() {
                  messages.add(_controller.text); // Add the new message
                });
                _controller.clear(); // Clear the input field
              }
            },
          ),
        ],
      ),
    );
  }
}
