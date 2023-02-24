import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_list.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';
import 'package:whatsapp_ui/widgets/message_input_box.dart';

import '../widgets/web_chat_appbar.dart';
import '../widgets/web_profile_bar.dart';
import '../widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              )),
              child: Column(
                children: const [
                  WebChatAppBar(),
                  Expanded(child: ChatList()),
                  MessageInputBox()
                ],
              )),
        ],
      ),
    );
  }
}
