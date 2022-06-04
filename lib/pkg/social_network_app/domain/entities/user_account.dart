import 'package:flutter_base_app/pkg/social_network_app/domain/model/profile_icon_url.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/profile_sub_text.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user_id.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user_name.dart';

class UserAccount {
  final UserId userId;
  final ProfileIconUrl iconUrl;
  final UserName name;
  final ModelProfileSubText subText;


  UserAccount(this.userId, this.iconUrl, this.name, this.subText);
}