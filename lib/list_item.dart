import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Color color;
  const ListItem({required this.color});

  @override
  Widget build(BuildContext context){
    Colors.accents;
    return Container(
        height: 100,
        color: color,
        margin: EdgeInsets.only(bottom: 10),
    );
  }
}