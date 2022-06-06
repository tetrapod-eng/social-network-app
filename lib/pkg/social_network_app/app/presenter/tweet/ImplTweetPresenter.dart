import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/TweetOutBound.dart';
import 'package:rxdart/rxdart.dart';

abstract class ImplTweetPresenter {

  void complete(List<TweetOutBound> outbound);
}