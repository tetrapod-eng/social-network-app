import 'package:flutter/material.dart';

class ProfileSubText extends StatelessWidget {
  final String text;

  const ProfileSubText({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(
      color: Colors.grey,
      fontSize: 10,
      overflow: TextOverflow.visible
    ));
  }
}
