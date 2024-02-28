import 'package:flutter/material.dart';

class CircularArrow extends StatelessWidget {
  final Icon icon;
  final Function() onPressed;
  const CircularArrow({required this.icon, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: CircleAvatar(backgroundColor: const Color(0xFFED8C42), child: icon),
      iconSize: 25,
    );
  }
}
