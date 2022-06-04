import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/icon_button_base.dart';

class TopicMenu extends StatelessWidget {
  const TopicMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconButtonBase(
      width: 115,
      text: "トピック",
      icon: Icons.topic_outlined
    );
  }
}
