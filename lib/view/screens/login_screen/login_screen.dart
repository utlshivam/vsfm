import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/home_screen/home_screen.dart';
import 'package:vsfm/view/screens/otp_screen/otp_screen.dart';
import 'package:vsfm/view/screens/register_screen/register_screen.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';
import 'package:vsfm/view/widget/custom_textFeild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xFFF6E18C),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 66),
                        child: Image.asset("assets/images/pngs/login_sc.png"),
                      ),
                ),
              ),
              // Spacer(),
              Container(
                  // height: 200,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Login to your account",
                        fontSize: 18,
                        fontColor: yellowF6E18CColor,
                      ),
                      const SizedBox(height: 50),
                      CustomTextFeild(
                        hintText: "Mobile Number",
                      ),
                      // const SizedBox(height: 20),
                      // CustomTextFeild(
                      //   hintText: "Password",
                      // ),
                      // const SizedBox(height: 16),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: CustomText(
                      //     text: "Forgot Password",
                      //     fontColor: yellowF6E18CColor,
                      //     fontSize: 12,
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      CustomButton(
                        name: "Login",
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                        },
                      ),
                      const SizedBox(height: 20),
                      CustomText(
                          text: "Or",
                          fontColor: yellowF6E18CColor,
                          fontSize: 12,
                        ),
                        const SizedBox(height: 20),
                      CustomButton(
                        name: "Ragister",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                        },
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
