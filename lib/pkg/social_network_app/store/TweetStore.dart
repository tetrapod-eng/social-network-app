import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/TweetOutBound.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/entities/tweet.dart';

class TweetStore {
  List<Tweet> _tweets = [];
  List<TweetOutBound> _outbounds = [];

  void setTweets(List<Tweet> tweets) {
    _tweets = tweets;
  }
  List<Tweet> getTweets() {
    return _tweets;
  }

  void setOutbounds(List<TweetOutBound> list) {
    _outbounds = list;
  }
  List<TweetOutBound> getOutBounds() {
    return _outbounds;
  }
}