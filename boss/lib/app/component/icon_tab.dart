import 'package:flutter/material.dart';

class IconTab extends StatefulWidget {
  @override
  _IconTabState createState() => _IconTabState();
  String text;
  String icon;
  Color color;

  IconTab({Key key, this.text, this.icon, this.color}) : super(key: key);
}

class _IconTabState extends State<IconTab> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
