import 'package:flutter/material.dart';
import '../model/item_chat_model.dart';
import '../widget/chat_item.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  final List<ChatModel> chats = [
    ChatModel(
      name: 'Mohamed Ahmad',
      image: 'assets/images/loacation.png',
      message: 'Ok',
      date: '2/10/2025',
      seen: true,
    ),
    ChatModel(
      name: 'أحمد معروف',
      image: 'assets/images/loacation.png',
      message: 'Ok',
      date: '2/10/2025',
      seen: true,
    ),
    ChatModel(
      name: 'عبد الرحمن محمد',
      image: 'assets/images/loacation.png',
      message: 'Ok',
      date: '2/10/2025',
      seen: true,
    ),
    ChatModel(
      name: 'moaz hassan',
      image: 'assets/images/loacation.png',
      message: 'Ok',
      date: '2/10/2025',
      seen: true,
    ),
    ChatModel(
      name: 'medo',
      image: 'assets/images/loacation.png',
      message: 'Ok',
      date: '2/10/2025',
      seen: true,
    ),
    ChatModel(
      name: 'Abdo',
      image: 'assets/images/loacation.png',
      message: 'Ok',
      date: '2/10/2025',
      seen: true,
    ),
    ChatModel(
      name: 'Ali mohamed',
      image: 'assets/images/loacation.png',
      message: 'Ok',
      date: '2/10/2025',
      seen: true,
    ),
    ChatModel(
      name: 'mido',
      image: 'assets/images/loacation.png',
      message: 'Ok',
      date: '2/10/2025',
      seen: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue.shade50,
        title: Text(
          'Chat',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (context, index) {
          return ChatItem(chat: chats[index]);
        },
      ),
    );
  }
}
