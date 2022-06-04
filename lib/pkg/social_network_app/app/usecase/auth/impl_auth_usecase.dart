import 'package:flutter_base_app/pkg/social_network_app/domain/entities/user_account.dart';

/// ユーザ認証確認
abstract class ImplAuthUseCase {

  bool authCheck();
  UserAccount getAccount();
}