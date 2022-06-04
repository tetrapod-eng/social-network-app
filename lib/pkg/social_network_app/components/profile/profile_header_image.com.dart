import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';

class ProfileHeaderImage extends StatelessWidget {
  final String src;

  const ProfileHeaderImage({
    Key? key,
    required this.src
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = (size.width / 398) * 133;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: BaseColor.mainColor()
      ),
      child: Image.network(src,
        fit: BoxFit.cover,
        errorBuilder: (c, b, s){
          return Container();
        }
      ),
    );
  }
}
