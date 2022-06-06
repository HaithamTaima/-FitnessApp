import 'package:flutter/material.dart';
import '../items/UserItem.dart';
import '../models/ModelChat.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return UserItem(chat: chatsList[index]);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 15,
          );
        },
        itemCount: chatsList.length,
      ),
    );
  }
}
