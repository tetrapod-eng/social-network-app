import 'package:flutter_base_app/core/drivers/firebase/firebase_initialize.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/initialize.dart';
import 'package:flutter_base_app/route.dart';

class FrameworkInitialize {
  static final _ready = [
    // ルーティングの初期化
    () { Route.registerRouting(); },
    () { FirebaseInitialize.register(); },
  ];

  // 依存性注入群
  static final _di = [
    // 認証処理の依存性注入
    (){  Initialize.registerContainer(); },
  ];

  static void initialize() {
    // アプリコンテンツの初期化
    for (var func in _ready) { func(); }

    // DIラン
   for (var element in _di) { element(); }
  }
}