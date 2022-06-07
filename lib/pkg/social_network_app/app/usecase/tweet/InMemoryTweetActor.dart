import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/get/ImplTweetRepository.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/get/InMemoryGetTweet.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/ImplTweetPresenter.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/TweetPresenter.dart';
import 'package:flutter_base_app/pkg/social_network_app/store/TweetStore.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/entities/tweet.dart';
import './ImplRandomTweetUseCase.dart';

class InMemoryTweetActor implements ImplRandomTweetUseCase {
  late BehaviorSubject<List<Tweet>> subject;
  late final repository;
  late final presenter;
  late final store;

  InMemoryTweetActor() {
    repository = MemoryStorage().make();
    presenter = MemoryStorage().make();
    store = MemoryStorage().make();
  }

  @override
  void handle() {
    subject = BehaviorSubject<List<Tweet>>();

    repository.getTweet();
    presenter.complete(store.getOutBounds());
    subject.sink.add(store.getTweets());
  }

  @override
  void findByUserId(String userId) {
    subject = BehaviorSubject<List<Tweet>>();

    repository.findByUserId(userId);
    presenter.complete(store.getOutBounds());
    subject.sink.add(store.getTweets());
  }
}