import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_message_screen.dart';

class ChatList extends StatelessWidget {
  final Map<String, String> info;
  const ChatList({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MobileMessageScreen())),
      contentPadding: const EdgeInsets.all(15),
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage(info['profilePic'].toString()),
      ),
      title: Text(
        info["name"].toString(),
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        info["message"].toString(),
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      trailing: Text(
        info["time"].toString(),
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
      ),
    );
  }
}
