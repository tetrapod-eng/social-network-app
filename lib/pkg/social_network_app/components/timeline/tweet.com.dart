import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';

import '../avatar/circle_avatar.dart' as com_avatar;
import '../timeline/tweet_profile.com.dart' as com_profile;
import '../timeline/tweet_text.com.dart' as com_tweet_text;
import '../../domain/model/user/profile_icon_url.dart';
import '../../domain/model/tweet/tweet_id.dart';
import '../../domain/entities/tweet.dart' as md_tweet;
import '../../domain/model/user/user_id.dart';
import '../../domain/model/user/user_name.dart';
import '../../domain/model/tweet/tweet_text.dart' as md_tweet_text;


class Tweet extends StatelessWidget {
  final md_tweet.Tweet tweet;

  const Tweet({
    Key? key,
    required this.tweet
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TweetId tweetId = tweet.tweetId;
    final md_tweet_text.TweetText text = tweet.text;
    final UserId userId = tweet.userId;
    final UserName userName = tweet.userName;
    final ProfileIconUrl iconUrl = tweet.iconUrl;

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
          com_avatar.AccountCircleAvatar(src: iconUrl.iconUrl),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                com_profile.TweetProfile(
                  userId: userId.userId,
                  userName: userName.name,
                ),
                // ツイートテキスト
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: com_tweet_text.TweetText(
                    text: text.text,
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