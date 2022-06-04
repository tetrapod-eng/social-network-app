import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';

class UserNameDef extends StatelessWidget {
  final String userName;

  const UserNameDef({
    Key? key,
    required this.userName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(userName, style: TextStyle(
      fontSize: 14,
      color: BaseColor.stringColor()
    ));
  }
}
