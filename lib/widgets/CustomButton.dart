import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isHome;
  const Custombutton ({
    super.key,
    required this.text,
    required this.onTap,
    required this.isHome,});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed:onTap,
      child: Text (
        text,
        style:const TextStyle(
          fontSize:10,
          color: Colors.blue)
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(!isHome? width:width/5, 50),
          )
    );
  }
}