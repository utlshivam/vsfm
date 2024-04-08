import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/core/constants/app_data.dart';
import 'package:vsfm/view/screens/bouncer_screen/bouncer_screen.dart';
import 'package:vsfm/view/screens/google_address_screen/google_address_screen.dart';
import 'package:vsfm/view/screens/house_keeping_screen/house_keeping_screen.dart';
import 'package:vsfm/view/screens/martial_art_screen/martial_art_screen.dart';
import 'package:vsfm/view/screens/security_guard_screen/security_guard_screen.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class ServiceTabScreen extends StatelessWidget {
  const ServiceTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
              // height: 100,
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              decoration: BoxDecoration(
                  color: yellowF6E18CColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(29),
                      bottomRight: Radius.circular(29))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Meerut Cantt",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: "Meerut, Uttap Pradesh",
                            fontSize: 14,
                            // fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => GoogleAddressScreen()));
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: blackColor,
                          child: Icon(
                            Icons.location_on_outlined,
                            color: yellowF6E18CColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          CustomText(
                            text: "Hello",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          // const SizedBox(height: 10),
                          CustomText(
                            text: "What Service\nDo You Need",
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      Image.asset("assets/images/pngs/unnamed.png", height: 70, width: 70),
                    ],
                  ),
                ],
              )),
          Expanded(
              child: Container(
                padding: EdgeInsets.all(30),
            child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            mainAxisSpacing: 15.0, // Spacing between rows
            crossAxisSpacing: 15.0, // Spacing between columns
            childAspectRatio: 1.0, // Aspect ratio (width/height) of each child
          ),
          itemCount: 4, // Total number of items
          itemBuilder: (BuildContext context, int index) {
            // Build individual grid items
            return GridTile(
              child: InkWell(
                onTap: (){
                  switch (index) {
                    case 0:
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MartialArtScreen()));
                    break;
                    case 1:
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BouncerScreen()));
                    break;
                    case 2:
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HouseKeepingScreen()));
                    break;
                    case 3:
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecurityGuardScreen()));
                    break;
                  }
                  
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: yellowF6E18CColor
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(img[index], height: 90, width: 90,),
                        const SizedBox(height: 10),
                        CustomText(
                          text: name[index],
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
          ))
        ],
      );
  }
}