import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tot1/Constants.dart';
import 'package:tot1/Constants/chatModel.dart';
import 'package:tot1/Widgets/CCircleAvatar.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {


List<ChatModel> myChats=chatsList.reversed.toList();

@override
void initState() { 
  super.initState();
  
}

  List<Color> _colorList = [
    Colors.orange,
    Colors.deepOrange,
    Colors.blue,
    Colors.teal,
    Colors.green,
    Colors.indigo,
    Colors.deepPurple,
    Colors.purple,
    Colors.pink,
    Colors.red,
  ];

  Color getColor(int index) {
    int count = 0;
    for (int i = 0; i < myChats.length; i++) {
      if (i == index) {
        break;
      } else {
        if (myChats[i].fromMe) {
          count++;
        }
      }
    }

    int j = -1;
    for (int i = 0; i <= count; i++) {
      if (j == _colorList.length) {
        j = 0;
      } else {
        j++;
      }
    }
    return _colorList[j];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      color: Colors.transparent,
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            border: Border(
              right: BorderSide(width: 2, color: Colors.blueGrey),
              left: BorderSide(
                  width: 2, color: Colors.blueGrey /*Color(0xFF777777)*/),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  top: kDefaultPadding,
                  bottom: kDefaultPadding / 2,
                  right: kDefaultPadding,
                  left: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text("STOFFER",
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.8))),
                      subtitle: Text("Active Now",
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.5))),
                      leading: Stack(
                        children: [
                          CustomAvatar(avatar: avatar12),
                          Positioned(
                              right: 2,
                              bottom: 2,
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ))
                        ],
                      ),
                      minVerticalPadding: 10,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding / 2,
                          vertical: kDefaultPadding / 4),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Center(
                            child: Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 25,
                        )),
                      ),
                      SizedBox(width: kDefaultPadding / 4),
                      IconButton(
                        onPressed: () {},
                        icon: Center(
                            child: Icon(
                          Icons.videocam_rounded,
                          color: Colors.blue,
                          size: 25,
                        )),
                      ),
                      SizedBox(width: kDefaultPadding / 4),
                      IconButton(
                        onPressed: () {},
                        icon: Center(
                            child: Icon(
                          Icons.info,
                          color: Colors.blue,
                          size: 25,
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 2, color: Colors.blueGrey, thickness: 0),
            Expanded(
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                      bottom: kDefaultPadding / 2),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: myChats.length,
                          reverse: true,
                          shrinkWrap: true,
                          itemBuilder: (contex, index) {
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: myChats[index].fromMe
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Container(
                                          margin: myChats[index].fromMe
                                              ? EdgeInsets.fromLTRB(
                                                  constraints.maxWidth * 0.25,
                                                  10.0,
                                                  0,
                                                  10.0)
                                              : EdgeInsets.fromLTRB(
                                                  0,
                                                  10.0,
                                                  constraints.maxWidth * 0.25,
                                                  10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              if (!myChats[index].fromMe)
                                                Container(
                                                    height: 40,
                                                    width: 40,
                                                    margin: EdgeInsets.only(
                                                        right: kDefaultPadding /
                                                            2),
                                                    child: Stack(
                                                      children: [
                                                        CustomAvatar(
                                                            avatar: avatar12),
                                                        Positioned(
                                                            right: 0,
                                                            bottom: 0,
                                                            child: Container(
                                                              height: 12,
                                                              width: 12,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                            ))
                                                      ],
                                                    )),
                                              Flexible(
                                                child: Container(
                                                  child: Text(
                                                    myChats[index].msg,
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  ),
                                                  padding: EdgeInsets.all(
                                                      kDefaultPadding / 2),
                                                  decoration: BoxDecoration(
                                                    color: myChats[index].fromMe
                                                        ? getColor(index)
                                                        : Colors.black
                                                            .withOpacity(0.3),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
                                                      bottomLeft: myChats[index]
                                                              .fromMe
                                                          ? Radius.circular(10)
                                                          : Radius.circular(0),
                                                      bottomRight: myChats[
                                                                  index]
                                                              .fromMe
                                                          ? Radius.circular(0)
                                                          : Radius.circular(10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if (myChats[index].fromMe &&
                                                  0 == index)
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  margin:
                                                      EdgeInsets.only(left: 5),
                                                  child: CustomAvatar(
                                                    avatar: avatar12,
                                                  ),
                                                )
                                            ],
                                          ));
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 35,
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: Center(
                                    child: Icon(
                                  FontAwesomeIcons.ellipsisH,
                                  color: Colors.blue,
                                  size: 20,
                                )),
                              ),
                            ),
                          ),
                          Container(
                            width: 35,
                            child: IconButton(
                              iconSize: 20,
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.camera,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ),
                          ),
                          Container(
                            width: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: Center(
                                    child: Icon(
                                  FontAwesomeIcons.image,
                                  color: Colors.blue,
                                )),
                              ),
                            ),
                          ),
                          Container(
                            width: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: IconButton(
                                iconSize: 20,
                                onPressed: () {},
                                icon: Center(
                                    child: Icon(
                                  FontAwesomeIcons.microphone,
                                  color: Colors.blue,
                                )),
                              ),
                            ),
                          ),
                          Expanded(
                              child: TextFormField(
                            cursorColor: Colors.grey,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Aa',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.3),
                              contentPadding: const EdgeInsets.only(
                                  left: 10.0, bottom: 1.0, top: 1.0),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              isDense: true,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Center(
                                    child: Icon(
                                  FontAwesomeIcons.solidSmile,
                                  color: Colors.blue,
                                )),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                            ),
                          )),
                          IconButton(
                            iconSize: 20,
                            onPressed: () {},
                            icon: Center(
                                child: Icon(
                              FontAwesomeIcons.solidThumbsUp,
                              color: Colors.blue,
                            )),
                          ),
                        ],
                      )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
