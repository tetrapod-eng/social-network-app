import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/avatar/circle_avatar.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_header_image.com.dart';

class ProfileAndAvatar extends StatelessWidget {
  const ProfileAndAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double height = (size.width / 398) * 133;

    return SizedBox(
      width: width,
      height: height + 60,
      child: Stack(
        children: [
          const Positioned(
            top: 0,
            child: ProfileHeaderImage(
              src: "https://pbs.twimg.com/profile_banners/1431975626060095494/1647058636/1080x360"
            ),
          ),
          Positioned(
            top: height - 40,
            left: 20,
            child: const AccountCircleAvatar(
              size: 80,
              src: 'https://newsimg.oricon.co.jp/feed/images/size640wh/20220421_134645_size640wh_2318.jpg'
            ),
          )
        ],
      ),
    );
  }
}
