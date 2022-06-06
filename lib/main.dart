import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/layout.dart';
import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/core/routing.dart';
import 'package:flutter_base_app/framework_initialize.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/initialize.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/impl_auth_usecase.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/usecase/auth/mock_auth.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/common/side_menu.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/timeline/tweet.com.dart';
import 'package:flutter_base_app/pkg/social_network_app/page/timelime.page.dart';

void main() {
  FrameworkInitialize.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return const Layout( // Home Page
      body: TimelinePage()
    );
  }
}
