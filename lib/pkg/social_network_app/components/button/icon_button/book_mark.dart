import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/icon_button_base.dart';

class MenuBookMark extends StatelessWidget {
  const MenuBookMark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconButtonBase(
      width: 115,
      text: "ブックマーク",
      icon: Icons.bookmark_outline
    );
  }
}
