import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/bouncer_screen/widget/bouncer_tile.dart';
import 'package:vsfm/view/screens/martial_art_screen/widget/martial_art_tile.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class MartialArtScreen extends StatefulWidget {
  const MartialArtScreen({super.key});

  @override
  State<MartialArtScreen> createState() => _MartialArtScreenState();
}

class _MartialArtScreenState extends State<MartialArtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellowF6E18CColor,
        title: CustomText(
          text: "Martial Art",
        ),
      ),
      body: Container(
          color: blackColor,
          padding: EdgeInsets.all(15),
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return MartialArtTile();
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
          )),
    );
  }
}
