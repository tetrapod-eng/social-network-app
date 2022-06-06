import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/get/ImplTweetRepository.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/get/InMemoryGetTweet.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/ImplTweetPresenter.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/TweetPresenter.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/impl_auth_usecase.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/mock_auth.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/tweet/ImplRandomTweetUseCase.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/tweet/InMemoryTweetActor.dart';
import 'package:flutter_base_app/pkg/social_network_app/store/TweetStore.dart';

class Initialize {

  static void registerContainer() {
    MemoryStorage storage = MemoryStorage.getInstance();

    // 認証システムDI
    storage.bind(ImplAuthUseCase, (){
      return MockAuth();
    });

    // ツイート取得系
    storage.bind(ImplRandomTweetUseCase, () { return InMemoryTweetActor(); });
    storage.bind(ImplTweetRepository, () { return InMemoryGetTweet(); });
    storage.bind(ImplTweetPresenter, () { return TweetPresenter(); } );
    storage.single(TweetStore, TweetStore());
  }
}