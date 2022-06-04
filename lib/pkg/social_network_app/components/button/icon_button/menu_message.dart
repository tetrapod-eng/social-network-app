import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/icon_button_base.dart';

class MenuMessage extends StatelessWidget {
  const MenuMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconButtonBase(
      width: 115,
      text: "トピック",
      icon: Icons.maps_ugc_outlined
    );
  }
}
