import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/widget/custom_button.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class SecurityGuardTile extends StatelessWidget {
  const SecurityGuardTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  // height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                  decoration: BoxDecoration(
                      color: whiteFFFFFFColor,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: "Rahul Kumar",
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Type: ",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    CustomText(
                                      text: "Unarmed",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Shift Timing: ",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    CustomText(
                                      text: "Morning and Evening",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: "Payment Mode: ",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    CustomText(
                                      text: "Online/Offline",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 120,
                            height: 150,
                            decoration: BoxDecoration(
                                  // color: lightBlue5451d6Color,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://media.istockphoto.com/id/1265217303/photo/strong-man-with-crossed-arms.jpg?s=612x612&w=0&k=20&c=4J_puV8UF7HSquAX7M3JJJSSIE6rVW4rHsG7lM02Fus=",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        name: "View Profile", 
                        onTap: (){

                        }
                      ),
                      const SizedBox(height: 10),
                      CustomButton(
                        name: "Book", 
                        onTap: (){

                        }
                      ),
                    ],
                  )
              );;
  }
}