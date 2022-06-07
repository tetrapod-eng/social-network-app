import 'package:flutter/material.dart';
import 'package:flutter_base_app/core/base_color.dart';
import 'package:flutter_base_app/pkg/social_network_app/components/profile/editor/profile_edit_background_image.dart';

class ProfileEditorPage extends StatefulWidget {
  const ProfileEditorPage({Key? key}) : super(key: key);

  @override
  State<ProfileEditorPage> createState() => _ProfileEditorPageState();
}

class _ProfileEditorPageState extends State<ProfileEditorPage> {

  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    final Size size = queryData.size;

    return Container(
      width: size.width,
      height: size.height * 0.9,
      decoration: BoxDecoration(
        color: BaseColor.mainColor()
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProfileEditBackgroundImage(
            width: size.width,
            changeFunction: (){}
          ),
        ],
      ),
    );
  }
}
