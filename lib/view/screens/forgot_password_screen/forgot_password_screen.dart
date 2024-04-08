import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';
import 'package:vsfm/view/widget/custom_textFeild.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Color(0xFFF6E18C),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 66),
                      child: Image.asset("assets/images/pngs/forgetp.png"),
                    ),
                    // Align(
                    //   alignment: Alignment.centerLeft,
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 19),
                    //     child: CustomText(
                    //         text: "Login",
                    //         fontSize: 18,
                    //         fontColor: Colors.black),
                    //   ),
                    // ),
                    const SizedBox(height: 25),
                  ],
                )),
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
                          text: "Forget Password",
                          fontSize: 18,
                          fontColor: yellowF6E18CColor,
                        ),
                        const SizedBox(height: 50),
                        CustomTextFeild(
                          hintText: "Enter Register Mobile Number",
                        ), 
                        const SizedBox(height: 20),
                        CustomButton(
                          name: "Send OTP",
                          onTap: () {},
                        ),
                        
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
