import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/common/side_menu.dart';


class Layout extends StatefulWidget {
  final Widget? body;

  const Layout({
    Key? key,
    required this.body
  }) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  @override
  Widget build(BuildContext context) {
    const double iconSize = 30;

    return Scaffold(
      body: (widget.body)?? Container(),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: BaseColor.mainColor(),
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: iconSize),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, size: iconSize, color: BaseColor.stringColor()),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined, size: iconSize, color: BaseColor.stringColor()),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined, size: iconSize, color: BaseColor.stringColor()),
            label: ""
          ),
        ],
      ),
    );
  }
}
