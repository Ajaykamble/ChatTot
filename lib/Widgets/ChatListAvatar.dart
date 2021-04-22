import 'package:flutter/material.dart';
import 'package:tot1/Constants/ChatListModel.dart';
import 'package:tot1/Widgets/CCircleAvatar.dart';

class ChatListAvatar extends StatelessWidget {
  final ChatList chat;
  const ChatListAvatar({Key key, this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        chat.isgroup
            ? Container(
                height: 50,
                width: 50,
                child: Stack(children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: CustomAvatar(
                        avatar: "${chat.avatar[0]}", width: 30, height: 30),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CustomAvatar(
                        avatar: "${chat.avatar[1]}", width: 30, height: 30),
                  ),
                ]),
              )
            : CustomAvatar(avatar: "${chat.avatar[0]}"),
        Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: chat.isOnline ? Colors.green : Colors.transparent,
              ),
            ))
      ],
    );
  }
}
