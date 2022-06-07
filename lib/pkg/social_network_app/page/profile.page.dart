import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/core/layout.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/controller/GetTweetController.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/common/back_mode_header.com.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_and_avatar.com.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/timeline/timeline_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    final Size size = query.size;
    final GetTweetController getTweetController = GetTweetController();
    final double profileHeight = ((size.width / 398) * 133) + 60;

    return Layout(
       body: SizedBox(
         width: size.width,
         height: size.height,
         child: Stack(
           children: [
             Positioned(
               top: 0,
               left: 0,
               child: Container(
                 width: size.width,
                 height: size.height,
                 decoration: BoxDecoration(
                     color: BaseColor.mainColor()
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     // size: 55,
                     const BackModelHeader(text: "てとらぽっど"),
                     const ProfileAndAvatar(),
                     Container(
                         width: size.width,
                         height: size.height - (profileHeight + 197),
                         decoration: const  BoxDecoration(
                             color: Colors.redAccent
                         ),
                         child: TimelineList(stream: getTweetController.findByUserId("one_pachi"))
                     )
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
    );
  }
}
