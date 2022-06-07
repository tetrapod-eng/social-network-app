import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/user_profile/user_profile_firebase_gatewasy.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/i_user_profile_create_usecase.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/user_profile_create_inputdata.dart';

/// ユーザプロフィール新規作成

class UserProfileCreateActor implements IUserProfileCreateUseCase {

  @override
  void handle(UserProfileCreateInputData inputData) {
    final UserProfileFirebaseGateway gateway = MemoryStorage().make();

    gateway.create(inputData.userId, inputData);
  }
}