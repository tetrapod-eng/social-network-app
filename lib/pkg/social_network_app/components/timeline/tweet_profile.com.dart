import 'package:flutter/material.dart';

import '../profile/profile_sub_text.dart';
import '../text/user_name_def.dart';

class TweetProfile extends StatelessWidget {
  final String userName;
  final String userId;

  const TweetProfile({
    Key? key,
    required this.userName,
    required this.userId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UserNameDef(userName: userName),
        ProfileSubText(text: userId),
      ],
    );
  }
}
