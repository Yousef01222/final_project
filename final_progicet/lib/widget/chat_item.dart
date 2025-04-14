import 'package:flutter/material.dart';
import '../model/item_chat_model.dart';

class ChatItem extends StatelessWidget {
  final ChatModel chat;

  const ChatItem({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(chat.image),
        radius: 25,
      ),
      title: Text(chat.name),
      subtitle: Row(
        children: [
          Icon(
            chat.seen ? Icons.check_circle : Icons.check_circle_outline,
            color: chat.seen ? Colors.green : Colors.grey,
            size: 16,
          ),
          SizedBox(width: 4),
          Text(chat.message),
        ],
      ),
      trailing: Text(chat.date),
    );
  }
}
