import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/home_screen/home_screen.dart';
import 'package:vsfm/view/widget/custom_text.dart';
import 'package:vsfm/view/widget/custom_textFeild.dart';

class GoogleAddressScreen extends StatefulWidget {
  const GoogleAddressScreen({super.key});

  @override
  State<GoogleAddressScreen> createState() => _GoogleAddressScreenState();
}

class _GoogleAddressScreenState extends State<GoogleAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Column(
            children: [
              Container(
                  // height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: yellowF6E18CColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(29),
                          bottomRight: Radius.circular(29))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){

                        },
                        child: Icon(Icons.arrow_back_ios_new_outlined, color: blackColor)
                      ),
                      const SizedBox(height: 20),
                      CustomTextFeild(
                        hintText: "Search Address",
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.location_searching_sharp, color: blackColor, size: 20,),
                          const SizedBox(width: 5),
                          CustomText(
                            text: "Current Location",
                            // fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  )),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: blackColor,
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: CustomText(
                        text: "Meerut cantt sadar Meerut cantt sadar Meerut cantt sadar Meerut cantt sadar",
                        fontColor: whiteFFFFFFColor,
                      ),
                    );
                  }, 
                  separatorBuilder: (BuildContext context, int index) { 
                    return const Divider(thickness: 0.5, color: Colors.white38, height: 25,);
                  },
                )
              ))
            ],
          ),
      ),
    );;
  }
}