import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/core/layout.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Layout(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: BaseColor.mainColor()
        ),
        child: const Center(
          child: Text("404 - Not Found"),
        ),
      )
    );
  }
}
