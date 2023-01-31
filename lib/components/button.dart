import 'package:flutter/material.dart';

import '../utils/config.dart';


class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.title,
      required this.width,
      required this.disble,
      required this.onPress})
      : super(key: key);
  final String title;
  final double width;
  final bool disble;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Config.primaryColor,
          foregroundColor: Colors.white
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
