import 'package:flutter/material.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/common/side_menu.dart';


class Layout extends StatelessWidget {
  final Widget? body;

  const Layout({
    Key? key,
    required this.body
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: (body)?? Container(),
      drawer: const Drawer(
        child: SideMenu(),
      ),
    );
  }
}
