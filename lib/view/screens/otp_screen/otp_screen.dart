import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/google_address_screen/google_address_screen.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';
import 'package:vsfm/view/widget/custom_textFeild.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xFFF6E18C),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66, vertical: 20),
                  child: Image.asset("assets/images/pngs/verify.png"),
                ),
              ),
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
                        text: "OTP Vrification",
                        fontSize: 18,
                        fontColor: yellowF6E18CColor,
                      ),
                      const SizedBox(height: 30),
                      Form(
                                  // key: formKey,
                                  child: PinCodeTextField(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    // focusNode: focusNode,
                                    textStyle: TextStyle(fontSize: 15, color: whiteFFFFFFColor),
                                    appContext: context,
                                    length: 4,
                                    // obscureText: true,
                                    // obscuringCharacter: '*',
                                    blinkWhenObscuring: true,
                                    animationType: AnimationType.fade,
                                    pinTheme: PinTheme(
                                        shape: PinCodeFieldShape.box,
                                        borderRadius: BorderRadius.circular(10),
                                        fieldHeight: 60,
                                        fieldWidth: 50,
                                        activeFillColor: blackColor,
                                        inactiveColor: yellowF6E18CColor,
                                        inactiveFillColor: blackColor,
                                        selectedFillColor: blackColor,
                                        selectedColor: yellowF6E18CColor,
                                        activeColor: yellowF6E18CColor),
                                    cursorColor: yellowF6E18CColor,
                                    // animationDuration:  Duration(milliseconds: 300),
                                    enableActiveFill: true,
                                    keyboardType: TextInputType.number,
                                    // boxShadows: const [
                                    //   BoxShadow(
                                    //     offset: Offset(0, 1),
                                    //     color: Colors.black12,
                                    //     blurRadius: 10,
                                    //   )
                                    // ],
                                    onCompleted: (v) {
                                      setState(() {
                                        // otp = v;
                                        // check = true;
                                      });
                                    },
                                    onChanged: (value) {
                                      debugPrint(value);
                                      setState(() {
                                        if (value.length != 6) {
                                          // check = false;
                                        }
                                      });
                                    },
                                    beforeTextPaste: (text) {
                                      debugPrint("Allowing to paste $text");
                                      return true;
                                    },
                                  )),
                      // const SizedBox(height: 50),
                      // CustomTextFeild(
                      //   hintText: "Enter OTP",
                      // ), 
                      const SizedBox(height: 20),
                      CustomButton(
                        name: "Confirm",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleAddressScreen()));
                        },
                      ),
                      
                    ],
                  ))
            ],
          )),
    );
  }
}
