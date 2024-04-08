import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';

class BouncerDetailScreen extends StatefulWidget {
  const BouncerDetailScreen({super.key});

  @override
  State<BouncerDetailScreen> createState() => _BouncerDetailScreenState();
}

class _BouncerDetailScreenState extends State<BouncerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yellowF6E18CColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              
            )
          ],
        )
      ),
    );
  }
}