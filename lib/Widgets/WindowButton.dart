import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class WindowButton extends StatelessWidget {
  const WindowButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Container(
        child: Row(
          children: [
            InkWell(
              onTap: () {
                appWindow.close();
              },
              child: Container(
                height: 15,
                width: 15,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
            ),
            SizedBox(width: 5),
            InkWell(
              onTap: () {
                appWindow.minimize();
              },
              hoverColor: Colors.pink,
              child: Container(
                height: 15,
                width: 15,
                decoration:
                    BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
              ),
            ),
            SizedBox(width: 5),
            InkWell(
              onTap: () {
                appWindow.maximizeOrRestore();
              },
              child: Container(
                height: 15,
                width: 15,
                decoration:
                    BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
