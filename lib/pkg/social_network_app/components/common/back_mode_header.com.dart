import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/core/routing.dart';

class BackModelHeader extends StatelessWidget {
  final String text;

  const BackModelHeader({
    Key? key,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double safeTop = MediaQuery.of(context).padding.top;

    return Container(
      width: size.width,
      height: 55,
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 12
      ),
      margin: EdgeInsets.only(top: safeTop),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Routing.getInstance().back(context);
            },
            child: Icon(Icons.arrow_back, color: BaseColor.stringColor())
          ),
          Text(text, style: TextStyle(
              color: BaseColor.stringColor()
          ))
        ],
      ),
    );
  }
}
