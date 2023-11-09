import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  Category({this.text,this.color,this.onTap});
  String? text;
  Color ?color;
  VoidCallback ?onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: color,
        height: 65,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            '$text',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
