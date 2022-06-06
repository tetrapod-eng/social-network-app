import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/impl_auth_usecase.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/entities/user_account.dart';

import '../../../domain/model/user/profile_icon_url.dart';
import '../../../domain/model/user/profile_sub_text.dart';
import '../../../domain/model/user/user_id.dart';
import '../../../domain/model/user/user_name.dart';

/// 認証モック用
class MockAuth implements ImplAuthUseCase {

  @override
  bool authCheck() {
    return true;
  }

  @override
  UserAccount getAccount() {
    if (!authCheck()) {
      // todo: 認証されていないときの処理
    }

    UserAccount account = UserAccount(
        UserId("teto_sys"),
        ProfileIconUrl("https://newsimg.oricon.co.jp/feed/images/size640wh/20220421_134645_size640wh_2318.jpg"),
        UserName("わんぱち@犬って思うな"),
        ModelProfileSubText("10万ボルトくらい流せる")
    );

    return account;
  }
}