import 'package:flutter/material.dart';
import 'package:vsfm/view/screens/create_new_password_screen/create_new_password_screen.dart';
import 'package:vsfm/view/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:vsfm/view/screens/home_screen/home_screen.dart';
import 'package:vsfm/view/screens/info_screen/info_screen.dart';
import 'package:vsfm/view/screens/login_screen/login_screen.dart';
import 'package:vsfm/view/screens/onboard_screen/onboard_screen.dart';
import 'package:vsfm/view/screens/otp_screen/otp_screen.dart';
import 'package:vsfm/view/screens/register_screen/register_screen.dart';

void main() {
  runApp(const MyApp());
}


//---------------------------------------------------  fLutter version 3.19.5
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  OnboardScreen(),
    );
  }
}

