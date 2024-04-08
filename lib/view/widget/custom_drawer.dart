import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/about_us_screen/about_us_screen.dart';
import 'package:vsfm/view/screens/help_center_screen/help_center_screen.dart';
import 'package:vsfm/view/screens/manage_address_screen/manage_address_screen.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: yellowF6E18CColor,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: yellowF6E18CColor),
                accountName: CustomText(
                  text: "Rahul Kumar",
                  fontColor: blackColor,
                  fontSize: 18,
                ),
                accountEmail: CustomText(
                  text: "rahul@gmail.com",
                  fontColor: blackColor,
                  fontSize: 16,
                ),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: CircleAvatar(
                    backgroundColor: blackColor,
                    child: Icon(Icons.person, color: yellowF6E18CColor,) //Text
                  ),
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), 
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('My Bookings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),//DrawerHeader
            
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Manage Address'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ManageAddressScreen()));
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rating'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.call),
              title: const Text('Help Center'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HelpCenterScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About Us'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}