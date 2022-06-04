import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/icon_button_base.dart';

class MenuUserProfile extends StatelessWidget {
  const MenuUserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconButtonBase(
      width: 115,
      text: "プロフィール",
      icon: Icons.person_outline
    );
  }
}
