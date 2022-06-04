import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';

class FollowMe extends StatelessWidget {
  final int followCount;

  const FollowMe({
    Key? key,
    required this.followCount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(followCount.toString(), style: TextStyle(
          color: BaseColor.stringColor(),
          fontSize: 15
        )),
        const Text("フォロー", style: TextStyle(
          color: Colors.grey,
          fontSize: 12
        ))
      ],
    );
  }
}
