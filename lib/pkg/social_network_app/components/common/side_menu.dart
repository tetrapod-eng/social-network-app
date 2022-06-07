import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/core/routing.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/impl_auth_usecase.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/book_mark.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/menu_message.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/menu_topic.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/menu_user_profile.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/column_user_profile.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_follow_er.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/entities/user_account.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/profile_icon_url.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/profile_sub_text.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/user_id.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user/user_name.dart';
import 'package:flutter_base_app/pkg/social_network_app/page/profile.page.dart';

import '../../app/usecase/auth/mock_auth.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final double topPadding = media.padding.top;
    final MockAuth auth = MemoryStorage().make();
    const double contentMargin = 10.0;

    UserAccount account = auth.getAccount();

    return Container(
      width: media.size.width * 0.8,
      height:  media.size.height,
      decoration: BoxDecoration(
        color: BaseColor.mainColor()
      ),
      padding: EdgeInsets.only(
        top: topPadding + 12,
        left: 12
      ),
      // 立幅端末レスポンシブ対応用 = ウィジェット
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // プロフィール
            Padding(
              padding: const EdgeInsets.only(bottom: contentMargin),
              child: ColumnUserProfile(account: account),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: contentMargin),
              child: ProfileFollowStatus(follow: 9, follower: 1),
            ),

            // メニュー
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 12
              ),
              child: GestureDetector(
                onTap: (){
                  Routing.getInstance().navigation("profile", context);
                },
                child: const MenuUserProfile()
              )
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 12
              ),
              child: const MenuBookMark()
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 12
              ),
              child: const TopicMenu()
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 12
              ),
              child: const MenuMessage()
            ),
          ],
        ),
      ),
    );
  }
}
