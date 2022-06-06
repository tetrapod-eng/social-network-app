import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/timeline/tweet.com.dart' as com_tweet;
import 'package:rxdart/rxdart.dart';

import '../../domain/entities/tweet.dart';

class TimelineList extends StatelessWidget {
  final BehaviorSubject<List<Tweet>> stream;
  final double? height;

  const TimelineList({
    Key? key,
    required this.stream,
    this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: stream.stream, builder: (BuildContext context, AsyncSnapshot<List<Tweet>> snapshot) {
      List<Tweet> tweets = [];

      if (snapshot.hasData) {
        tweets = snapshot.data!;

        return ListView.builder(
          cacheExtent: 0.0,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return com_tweet.Tweet(tweet: tweets[index]);
          },
          itemCount: tweets.length,
        );
      }

      // todo :データなかったとき
      return Container();
    },

    );
  }

  List<com_tweet.Tweet> genTweet(List<Tweet> tweets) {
    List<com_tweet.Tweet> widgets = [];

    for (var value in tweets) {
      com_tweet.Tweet tweet = com_tweet.Tweet(tweet: value);
      widgets.add(tweet);
    }

    return widgets;
  }
}
