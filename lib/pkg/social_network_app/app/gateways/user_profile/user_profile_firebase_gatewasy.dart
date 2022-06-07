import 'package:flutter_base_app/core/drivers/firebase/firestore/firestore_driver.dart';
import 'package:flutter_base_app/core/exception/gateway_exception.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/user_profile/i_user_profile_gateway.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/user_profile_create_inputdata.dart';

/// ユーザプロフィール外部接続ゲートウェイ
class UserProfileFirebaseGateway implements IUserProfileGateway {

  @override
  void create(String userId, UserProfileCreateInputData request) {
    FirestoreDriver driver = FirestoreDriver();

    try {

      driver.create(userId, request.toMap());
    } catch (e) {
      throw GatewayException("ユーザプロフィール更新中に接続エラーが発生しました。");
    }
  }
}