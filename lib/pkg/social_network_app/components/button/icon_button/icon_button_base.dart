import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';

class IconButtonBase extends StatelessWidget {
  final String text;
  final IconData icon;
  final double? width;

  const IconButtonBase({
    Key? key,
    required this.text,
    required this.icon,
    this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (width)?? 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Icon(icon, color: BaseColor.stringColor(), size: 17),
          ),
          Text(text, style: TextStyle(
            color: BaseColor.stringColor()
          ))
        ],
      ),
    );
  }
}
