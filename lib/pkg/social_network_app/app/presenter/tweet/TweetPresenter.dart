import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/ImplTweetPresenter.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/TweetOutBound.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/entities/tweet.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/tweet/tweet_id.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/profile_icon_url.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/user_id.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/user_name.dart';
import 'package:flutter_base_app/pkg/social_network_app/store/TweetStore.dart';

import '../../../domain/model/tweet/tweet_text.dart';

class TweetPresenter implements ImplTweetPresenter {

  @override
  void complete(List<TweetOutBound> outbound) {
    final TweetStore store = MemoryStorage().make();
    List<Tweet> list = [];

    for (TweetOutBound item in outbound) {
      list.add(
        Tweet(
          TweetId(""),
          TweetText(item.tweetText),
          UserId(item.userId),
          UserName(item.userName),
          ProfileIconUrl(item.iconUrl)
        )
      );
    }

    store.setTweets(list);
  }
}