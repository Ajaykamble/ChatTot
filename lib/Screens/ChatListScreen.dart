import 'package:flutter/material.dart';
import 'package:tot1/Constants.dart';
import 'package:tot1/Constants/ChatListModel.dart';
import 'package:tot1/Widgets/CCircleAvatar.dart';
import 'package:tot1/Widgets/ChatListAvatar.dart';
import 'package:tot1/Widgets/WindowButton.dart';

class ChatListScreen extends StatefulWidget {
  ChatListScreen({Key key}) : super(key: key);

  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.6),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
              child: WindowButton()),
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: Row(
              children: [
                CustomAvatar(avatar: avatar1),
                SizedBox(width: kDefaultPadding / 2),
                Text("Chats",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 15,
                        )),
                    SizedBox(width: kDefaultPadding / 4),
                    Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.videocam_sharp,
                          color: Colors.white,
                          size: 15,
                        )),
                    SizedBox(width: kDefaultPadding / 4),
                    Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.mode_rounded,
                          color: Colors.white,
                          size: 15,
                        )))
                  ],
                )),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: TextFormField(
              cursorColor: Colors.grey,
              style: TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                filled: true,
                fillColor: Colors.black.withOpacity(0.3),
                contentPadding:
                    const EdgeInsets.only(left: 10.0, bottom: 1.0, top: 1.0),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                isDense: true,
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Expanded(
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: myChatList.length,
              itemBuilder: (context, index) {
                ChatList chat = myChatList[index];

                return Material(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      MediaQuery.removePadding(
                        context: context,
                        removeBottom: true,
                        child: ListTile(
                          title: Text("${chat.name}",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8))),
                          subtitle: Text("${chat.lastMessage}",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5))),
                          trailing: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: (!chat.isRead)
                                      ? Colors.blue
                                      : Colors.transparent,
                                  shape: BoxShape.circle)),
                          tileColor: Colors.black.withOpacity(0.2),
                          focusColor: Colors.black.withOpacity(0.3),
                          hoverColor: Colors.black.withOpacity(0.3),
                          onTap: () {},
                          leading: ChatListAvatar(chat:chat),
                          selectedTileColor: Colors.black.withOpacity(0.3),
                          minVerticalPadding: 10,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: kDefaultPadding,
                              vertical: kDefaultPadding / 4),
                        ),
                      ),
                      Divider(thickness: 0, height: 1, color: Colors.blueGrey),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
