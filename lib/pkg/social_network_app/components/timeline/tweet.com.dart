import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/avatar/circle_avatar.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_sub_text.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/text/user_name_def.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/timeline/tweet_text.com.dart';

class Tweet extends StatelessWidget {
  const Tweet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 8
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: BaseColor.borderColor()
          )
        ),
        color: BaseColor.mainColor()
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AccountCircleAvatar(src: "https://newsimg.oricon.co.jp/feed/images/size640wh/20220421_134645_size640wh_2318.jpg"),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    UserNameDef(userName: "わんぱち@犬"),
                    ProfileSubText(text: "@one_patch"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TweetText(
                    text: "テキストツィート。テキストツィート。テキストツィート。テキストツィート。テキストツィート。テキストツィート。テキストツィート。",
                    width: size.width - 95,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}