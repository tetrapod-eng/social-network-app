import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/controller/GetTweetController.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/timeline/timeline_list.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/timeline/tweet.com.dart' as com_tweet;
import 'package:flutter_base_app/pkg/social_network_app/domain/entities/tweet.dart';
import 'package:rxdart/rxdart.dart';


class TimelinePage extends StatelessWidget {

  const TimelinePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    final double safeTop = query.padding.top;
    final Size size = query.size;
    final GetTweetController controller = GetTweetController();

    controller.getRandom();
    return Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.only(top: safeTop),
      decoration: BoxDecoration(
        color: BaseColor.mainColor()
      ),
      child: TimelineList(stream: controller.getRandom()),
    );
  }

}
