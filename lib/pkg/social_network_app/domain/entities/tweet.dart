import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/profile_icon_url.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/tweet/tweet_id.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/tweet/tweet_text.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/user_id.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/user_name.dart';

// 投稿情報
class Tweet {
  final TweetId _tweetId;
  final TweetText _text;
  final UserId _userId;
  final UserName _userName;
  final ProfileIconUrl _iconUrl;

  Tweet(this._tweetId, this._text, this._userId, this._userName, this._iconUrl);

  ProfileIconUrl get iconUrl => _iconUrl;
  UserName get userName => _userName;
  UserId get userId => _userId;
  TweetText get text => _text;
  TweetId get tweetId => _tweetId;
}