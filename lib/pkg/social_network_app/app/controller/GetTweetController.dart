
import 'dart:developer';

import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/tweet/InMemoryTweetActor.dart';
import 'package:rxdart/rxdart.dart';
import '../../domain/entities/tweet.dart';

class GetTweetController {
  final MemoryStorage storage = MemoryStorage();
  late final InMemoryTweetActor actor = MemoryStorage().make();

  /// ランダムで直近の投稿を取得して出力します。
  BehaviorSubject<List<Tweet>> getRandom() {

    try {

      actor.handle();
    } catch (e) {
      log("random get tweets Controller -> Exception -> ");
      log(e.toString());
    }

    return actor.subject;
  }

  /// ユーザーIDから最新の投稿を取得して出力します。
  BehaviorSubject<List<Tweet>> findByUserId(String userId) {

    try {
      actor.findByUserId(userId);

    } catch (e) {
      log(e.toString());
    }

    return actor.subject;
  }
}