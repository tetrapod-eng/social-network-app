import 'package:flutter/material.dart';

import '../../../../core/base_color.dart';

class TweetText extends StatelessWidget {
  final String text;
  final double width;

  const TweetText({
    Key? key,
    required this.text,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: width,
      child: Text(text, style: TextStyle(
        color: BaseColor.stringColor(),
        overflow: TextOverflow.visible
      )),
    );
  }
}
