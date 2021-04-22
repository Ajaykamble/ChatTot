import 'package:tot1/Constants/chatModel.dart';

import 'Constants/ChatListModel.dart';

const kDefaultPadding=20.0;
const String avatar1="assets/1.png";
const String avatar2="assets/2.png";
const String avatar3="assets/3.png";
const String avatar4="assets/4.png";
const String avatar5="assets/5.png";
const String avatar6="assets/6.png";
const String avatar7="assets/7.png";
const String avatar8="assets/8.png";
const String avatar9="assets/9.png";
const String avatar10="assets/10.png";
const String avatar11="assets/11.png";
const String avatar12="assets/12.png";
const String avatar13="assets/13.png";

const String ic_word="assets/ic_word.png";
const String ic_excel="assets/ic_excel.png";
const String ic_pdf="assets/ic_pdf.png";

List<ChatList> myChatList=[
  ChatList(name: "STOFFER",lastMessage: "Thank You",isgroup: false,avatar: [avatar12],isOnline: true,isRead: true),
  ChatList(name: "Family Chat",lastMessage: "Developing My new App..",isgroup: true,avatar: [avatar9,avatar11],isOnline: true,isRead: true),
  ChatList(name: "John Doe",lastMessage: "Whats up Bro",isgroup: false,avatar: [avatar7],isOnline: true,isRead: false),
  ChatList(name: "Aayush Jadhav",lastMessage: "I'm Busy now",isgroup: false,avatar: [avatar4],isOnline: false,isRead: false),
  ChatList(name: "Aanya D'souza",lastMessage: "See ya!",isgroup: false,avatar: [avatar11],isOnline: true,isRead: true),
  ChatList(name: "Olivia Ava",lastMessage: "Hii",isgroup: false,avatar: [avatar2],isOnline: false,isRead: true),
  ChatList(name: "Olivia Ava",lastMessage: "Hii",isgroup: false,avatar: [avatar3],isOnline: true,isRead: true),
  
];

List<ChatModel> chatsList=[
  ChatModel(fromMe: true,msg: "Hi ! 👋 We are glad to welcome you to our website. Should you have any questions, I’m here to help."),
  ChatModel(fromMe: true,msg: "Before we begin, can i have your name?"),
  ChatModel(fromMe: false,msg: "Vinesh"),
  ChatModel(fromMe: true,msg: "Thanks Vinesh! I'm happy to connect you with a member of our team."),
  ChatModel(fromMe: false,msg: "I am looking for discount coupan for upcoming events."),
  ChatModel(fromMe: true,msg: "Yes. you can use this coupan : XYZ3F for 10% Discount on each purchases."),
  ChatModel(fromMe: false,msg: "Thank You"),
  ChatModel(fromMe: true,msg: "Thank you for visiting our website. Hope to see you once again. Good day."),
];
