import 'package:flutter/material.dart';

Widget textListViewItem({
  required String text,
  double size = 14,
  FontWeight fontWeight=FontWeight.normal,
  Color color=Colors.black,
}){
  return Text(
    text,
    style:TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
    ),
maxLines: 1,
overflow: TextOverflow.ellipsis,
  );
}