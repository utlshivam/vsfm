import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/home_screen/home_screen.dart';
import 'package:vsfm/view/screens/otp_screen/otp_screen.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';
import 'package:vsfm/view/widget/custom_textFeild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xFFF6E18C),
          child: Column(
            children: [
              Expanded(
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 66),
                      child: Image.asset("assets/images/pngs/sing_up.png"),
                    )),
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
                        text: "Create an account",
                        fontSize: 18,
                        fontColor: yellowF6E18CColor,
                      ),
                      const SizedBox(height: 50),
                      CustomTextFeild(
                        hintText: "Username",
                      ),
                      // const SizedBox(height: 20),
                      // CustomTextFeild(
                      //   hintText: "Email",
                      // ),
                      const SizedBox(height: 20),
                      CustomTextFeild(
                        hintText: "Phone Number",
                      ),
                      // const SizedBox(height: 20),
                      // CustomTextFeild(
                      //   hintText: "City",
                      // ),
                      // const SizedBox(height: 20),
                      // CustomTextFeild(
                      //   hintText: "State",
                      // ),
                      // const SizedBox(height: 20),
                      // CustomTextFeild(
                      //   hintText: "Password",
                      // ),
                      const SizedBox(height: 20),
                      
                      CustomButton(
                        name: "Create",
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                        },
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "Already have an account? ",
                            fontColor: whiteFFFFFFColor,
                            fontSize: 13,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: CustomText(
                              text: "Login",
                              fontColor: yellowF6E18CColor,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}
