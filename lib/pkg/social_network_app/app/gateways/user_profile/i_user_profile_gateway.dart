import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/user_profile_create_inputdata.dart';

/// ユーザプロフィール接続用インターフェース
abstract class IUserProfileGateway {

  /// ユーザプロフィール新規登録関数
  void create(String userId, UserProfileCreateInputData request);
}