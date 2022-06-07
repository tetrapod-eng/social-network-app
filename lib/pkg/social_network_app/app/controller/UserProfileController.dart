import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/user_profile_create_actor.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/user_profile/create/user_profile_create_inputdata.dart';

class UserProfileController {

  String userProfileCreate(String userId, String userName, String description,
      String profileIconUrl) {

    final UserProfileCreateActor actor = MemoryStorage().make();
    UserProfileCreateInputData inputData;

    try {
      inputData = UserProfileCreateInputData(userId, userName, description,
          profileIconUrl);

      actor.handle(inputData);
    } catch (exception) {
      return "プロフィールの更新に失敗しました";
    }

    return "プロフィールを更新しました";
  }
}