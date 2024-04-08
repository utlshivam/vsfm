import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/about_us_screen/about_us_screen.dart';
import 'package:vsfm/view/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:vsfm/view/screens/profile_tab_screen/widget/profile_list_tile.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class ProfileTabScreen extends StatefulWidget {
  const ProfileTabScreen({super.key});

  @override
  State<ProfileTabScreen> createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              child: Column(
                children: [
                  Container(
                      // color: Colors.green,
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: yellowF6E18CColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(28),
                              bottomRight: Radius.circular(28))),
                      
                    ),
                    const SizedBox(height: 100)
                ],
              ),
            ),
              
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: yellowF6E18CColor,
                  child: CircleAvatar(
                          radius: 60,
                          backgroundColor: whiteFFFFFFColor,
                          child: Icon(
                            Icons.person,
                            color: blackColor,
                            size: 50,
                          ),
                        ),
                ),
              ),
              Positioned(
                bottom: 40,
                right: 15,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: yellowF6E18CColor,
                    child: Icon(Icons.edit)
                  ),
                ),
              )
          ],
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ProfileListTile(
                icon: Icons.person,
                title: "User Name",
                data: "Rahul Kumar",
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
                },
              ),
              const SizedBox(height: 15),
              ProfileListTile(
                icon: Icons.phone,
                title: "Mobile No.",
                data: "7060419301",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen()));
                },
              ),
              const SizedBox(height: 15),
              ProfileListTile(
                icon: Icons.mail,
                title: "Email Id",
                data: "rahul@gmail.com",
                onTap: (){

                },
              ),
              // const SizedBox(height: 15),
              // ProfileListTile(
              //   icon: Icons.location_on,
              //   title: "Manage Address",
              //   onTap: (){

              //   },
              // ),
              // const SizedBox(height: 15),
              // ProfileListTile(
              //   icon: Icons.phone,
              //   title: "Help Center",
              //   onTap: (){

              //   },
              // ),
            ],
          ),
        ))
      ],
    );
  }
}
