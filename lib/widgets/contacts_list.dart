import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import '../info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage(info[index]["profilePic"].toString()),
                    ),
                    title: Text(
                      info[index]["name"].toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        info[index]["message"].toString(),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    trailing: Text(
                      info[index]["time"].toString(),
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ),
                ),
                const Divider(
                  color: dividerColor,
                  indent: 85,
                )
              ],
            );
          }),
    );
  }
}
