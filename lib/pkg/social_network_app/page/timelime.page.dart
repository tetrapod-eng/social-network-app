import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/core/layout.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/common/back_mode_header.com.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/profile_and_avatar.com.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/timeline/tweet.com.dart';

class TimelinePage extends StatelessWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    final double safeTop = query.padding.top;
    final Size size = query.size;

    return Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.only(top: safeTop),
      decoration: BoxDecoration(
        color: BaseColor.mainColor()
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
            Tweet(),
          ],
        ),
      ),
    );
  }
}
