import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';

class ProfileEditBackgroundImage extends StatelessWidget {
  final double width;
  final Function changeFunction;

  const ProfileEditBackgroundImage({
    Key? key,
    required this.width,
    required this.changeFunction
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = (width / 398) * 133;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: BaseColor.borderColor()
      ),
      child: Center(
        child: Icon(Icons.add_a_photo_outlined, color: BaseColor.stringColor()),
      ),
    );
  }
}
