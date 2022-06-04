import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/core/layout.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/common/back_mode_header.com.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_and_avatar.com.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_header_image.com.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    final double safeTop = query.padding.top;
    final Size size = query.size;

    return Layout(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: BaseColor.mainColor()
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            BackModelHeader(text: "てとらぽっど"),
            ProfileAndAvatar(),
          ],
        ),
      )
    );
  }
}
