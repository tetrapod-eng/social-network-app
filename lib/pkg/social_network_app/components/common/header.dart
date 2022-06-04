import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Widget? body;

  const Header({
    Key? key,
    this.body
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData query = MediaQuery.of(context);
    final double paddingTop = query.padding.top;

    return Container(
      padding: EdgeInsets.only(
        top: paddingTop + 5,
        bottom: 12
      ),
      decoration: const BoxDecoration(
        color: Color(0xFF4E4ADB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        )
      ),
      child: body,
    );
  }
}
