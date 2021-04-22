import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final double width;
  final double height;
  const CustomAvatar({Key key, this.avatar,this.width=50,this.height=50}) : super(key: key);
  final String avatar;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      decoration: BoxDecoration(
        color: Color(0xff313131),
        borderRadius: BorderRadius.all(Radius.circular(width)),
        border: Border.all(
          color: Colors.blueGrey,
          width: 2.0,
        ),
      ),
      child: CircleAvatar(
        foregroundImage: AssetImage(avatar),
      ),
    );
  }
}
