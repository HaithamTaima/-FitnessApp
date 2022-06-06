import 'package:flutter/material.dart';
import '../models/ModelChat.dart';

class UserItem extends StatefulWidget {
  final ModelChat chat;

  const UserItem({
    required this.chat,
    Key? key,
  }) : super(key: key);

  @override
  _UserItemState createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Color(0xff2A2C41),
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(widget.chat.img),
              maxRadius: 30,
            ),
            const SizedBox(
              width: 14,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.chat.name,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    widget.chat.lastMessage,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF646781),
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              widget.chat.time,
              style: const TextStyle(
                color: Color(0xFF646781),
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
