import 'package:flutter/material.dart';

class AccountCircleAvatar extends StatelessWidget {
  final String src;
  final double? size;

  const AccountCircleAvatar({
    Key? key,
    required this.src,
    this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999999),
      child: Container(
        width: (size)?? 60,
        height: (size)?? 60,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Image.network(src,
          fit: BoxFit.cover,
          errorBuilder: (b, o, s) {
            return Container();
          }
        ),
      ),
    );
  }
}
