import 'dart:ui';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:tot1/Constants.dart';
import 'package:tot1/Screens/ChatDetailScreen.dart';
import 'package:tot1/Screens/ChatScreen.dart';
import 'package:tot1/Widgets/CCircleAvatar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tot1/Screens/ChatListScreen.dart';

void main() {
  runApp(MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    final initialSize = Size(1100, 700);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Custom window with Flutter";

    win.show();
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

const borderColor = Color(0xFF805306);

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor: Colors.transparent,
        body: WindowBorder(
          color: Colors.black.withOpacity(0.6),
          width: 0,
          child: Container(
            decoration: BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  /*const Color(0xFF3366FF),
            const Color(0xFF00CCFF),*/
                  Color(0xFF24C6DC),
                  Color(0xFF348AC7),
                ],
                begin: FractionalOffset(0.5, 1.0),
                end: FractionalOffset(1.0, 0.5),
                stops: [0.0, 1.0],
              ),
            ),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onPanStart: (details) {
                appWindow.startDragging();
              },
              //onDoubleTap: () => appWindow.maximizeOrRestore(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex:3,
                    child: ChatListScreen()
                  ),
                  Expanded(
                    flex: 5,
                    child: ChatScreen(),
                  ),
                  Expanded(
                    flex: 3,
                    child: ChatDetailScreen(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

