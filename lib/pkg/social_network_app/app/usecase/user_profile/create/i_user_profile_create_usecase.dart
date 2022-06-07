import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/user_profile_create_inputdata.dart';

// ユーザープロフィール新規登録処理
abstract class IUserProfileCreateUseCase {
  
  void handle(UserProfileCreateInputData inputData);
}