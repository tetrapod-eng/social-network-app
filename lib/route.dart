import 'dart:developer';

import 'package:flutter_base_app/core/routing.dart';
import 'package:flutter_base_app/pkg/social_network_app/page/profile.page.dart';
import 'package:flutter_base_app/pkg/social_network_app/page/timelime.page.dart';

class Route {
  static final Routing routing = Routing.getInstance();

  static void registerRouting() {

    routing.setRouting("profile", const ProfilePage(), (){
      log("Profile page middleware!!");
    });

    routing.setRouting("home", const TimelinePage(), null);
  }
}