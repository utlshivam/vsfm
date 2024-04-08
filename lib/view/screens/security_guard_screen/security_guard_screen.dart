import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/bouncer_screen/widget/bouncer_tile.dart';
import 'package:vsfm/view/screens/security_guard_screen/widget/security_guard_tile.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class SecurityGuardScreen extends StatefulWidget {
  const SecurityGuardScreen({super.key});

  @override
  State<SecurityGuardScreen> createState() => _SecurityGuardScreenState();
}

class _SecurityGuardScreenState extends State<SecurityGuardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellowF6E18CColor,
        title: CustomText(
          text: "Security Guard",
        ),
      ),
      body: Container(
          color: blackColor,
          padding: EdgeInsets.all(15),
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return SecurityGuardTile();
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
          )),
    );
  }
}
