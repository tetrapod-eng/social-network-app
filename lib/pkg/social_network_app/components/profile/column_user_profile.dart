import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/avatar/circle_avatar.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_sub_text.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/text/user_name_def.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/entities/user_account.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/profile_icon_url.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/profile_sub_text.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/user_name.dart';

class ColumnUserProfile extends StatelessWidget {
  final UserAccount account;

  const ColumnUserProfile({
    Key? key,
    required this.account
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.only(bottom: 5);
    ProfileIconUrl iconUrl = account.iconUrl;
    ModelProfileSubText subText = account.subText;
    UserName name = account.name;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: GestureDetector(
            onTap: () {
              // todo: プロフィールアバタータップイベント
            },
            child: AccountCircleAvatar(
              src: iconUrl.iconUrl,
            )
          ),
        ),
        Padding(
          padding: padding,
          child: UserNameDef(userName: name.name),
        ),
        ProfileSubText(text: subText.text)
      ],
    );
  }
}
