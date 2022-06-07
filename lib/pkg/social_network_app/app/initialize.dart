import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/get/ImplTweetRepository.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/get/InMemoryGetTweet.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/user_profile/i_user_profile_gateway.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/user_profile/user_profile_firebase_gatewasy.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/ImplTweetPresenter.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/TweetPresenter.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/impl_auth_usecase.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/mock_auth.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/tweet/ImplRandomTweetUseCase.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/tweet/InMemoryTweetActor.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/i_user_profile_create_usecase.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/user_profile_create_actor.dart';
import 'package:flutter_base_app/pkg/social_network_app/store/TweetStore.dart';

class Initialize {

  static void registerContainer() {
    // 認証システムDI
    MemoryStorage().bind<ImplAuthUseCase>(() => MockAuth());

    // ツイート取得系
    MemoryStorage().bind<ImplRandomTweetUseCase>(() => InMemoryTweetActor());
    MemoryStorage().bind<ImplTweetRepository>(() => InMemoryGetTweet());
    MemoryStorage().bind<ImplTweetPresenter>(() => TweetPresenter());
    MemoryStorage().bind<TweetStore>(() => TweetStore());

    // ユーザプロフィール
    MemoryStorage().bind<IUserProfileGateway>(() => UserProfileFirebaseGateway());
    MemoryStorage().bind<IUserProfileCreateUseCase>(() => UserProfileCreateActor());
  }
}