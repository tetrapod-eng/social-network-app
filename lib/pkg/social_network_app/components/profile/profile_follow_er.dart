import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/follow_me.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/follow_us.dart';

class ProfileFollowStatus extends StatelessWidget {
  final int follow;
  final int follower;

  const ProfileFollowStatus({
    Key? key,
    required this.follow,
    required this.follower
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: FollowMe(followCount: follow),
        ),
        FollowUs(followCount: follower)
      ],
    );
  }
}
