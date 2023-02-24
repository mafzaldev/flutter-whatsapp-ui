import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg"),
              radius: 30,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Text(
              info[0]["name"].toString(),
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        )
      ]),
    );
  }
}
