import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/book_mark.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/menu_message.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/menu_topic.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/button/icon_button/menu_user_profile.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/column_user_profile.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_follow_er.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/entities/user_account.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/profile_icon_url.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/profile_sub_text.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user_id.dart';
import 'package:flutter_base_app/pkg/social_network_app/domain/model/user_name.dart';
import 'package:flutter_base_app/pkg/social_network_app/page/profile.page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final double topPadding = media.padding.top;
    const double contentMargin = 10.0;

    UserAccount account = UserAccount(
        UserId("teto_sys"),
        ProfileIconUrl("https://newsimg.oricon.co.jp/feed/images/size640wh/20220421_134645_size640wh_2318.jpg"),
        UserName("わんぱち@犬って思うな"),
        ModelProfileSubText("10万ボルトくらい流せる")
    );

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
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (c) {
                      return const ProfilePage();
                    })
                  );
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
