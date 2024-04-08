import 'package:flutter/material.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/core/constants/app_data.dart';
import 'package:vsfm/view/screens/profile_tab_screen/profile_tab_screen.dart';
import 'package:vsfm/view/screens/service_tab_screen/service_tab_screen.dart';
import 'package:vsfm/view/widget/custom_drawer.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int pageIndex = 0;
  List<String> title = [
    "Services",
    "Wallet",
    "Profile"
  ];
  List<Widget> pages = [
    ServiceTabScreen(),
    Container(color: Colors.blue),
    ProfileTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: yellowF6E18CColor,
        // title: CustomText(
        //   text: title[pageIndex],

        // ),
        // centerTitle: true,
      ),
      body: pages[pageIndex],
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: whiteFFFFFFColor,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedItemColor: yellowF6E18CColor,
        onTap: (int index) {
          setState(
                () {
                  pageIndex = index;
            },
          );
        },
        currentIndex: pageIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: pageIndex == 0
                ? Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: redCA1F27Color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.support,color: yellowF6E18CColor,size: 30),
                ))
                : Icon(Icons.home,size: 30),
            label: "Services"
            
            
          ),
          BottomNavigationBarItem(
            icon: pageIndex == 1
                ? Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: redCA1F27Color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.wallet ,color: yellowF6E18CColor,size: 24,),
                )
                )
                : Icon(Icons.wallet,size: 24),
                
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: pageIndex == 2
                ? Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: redCA1F27Color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.person,color: yellowF6E18CColor,size: 24),
                ))
                : Icon(Icons.person,size: 24),
            label: 'Profile',
          )
        ],
      ),
      // body: Column(
      //   children: [
      //     Container(
      //         // height: 100,
      //         width: double.infinity,
      //         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //         decoration: BoxDecoration(
      //             color: yellowF6E18CColor,
      //             borderRadius: BorderRadius.only(
      //                 bottomLeft: Radius.circular(29),
      //                 bottomRight: Radius.circular(29))),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 CustomText(
      //                   text: "Hello",
      //                   fontSize: 17,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //                 const SizedBox(height: 10),
      //                 CustomText(
      //                   text: "What Service\nDo You Need",
      //                   fontSize: 21,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ],
      //             ),
      //             Image.asset("assets/images/pngs/unnamed.png"),
      //           ],
      //         )),
      //     Expanded(
      //         child: Container(
      //           padding: EdgeInsets.all(30),
      //       child: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2, // Number of columns
      //       mainAxisSpacing: 15.0, // Spacing between rows
      //       crossAxisSpacing: 15.0, // Spacing between columns
      //       childAspectRatio: 1.0, // Aspect ratio (width/height) of each child
      //     ),
      //     itemCount: 4, // Total number of items
      //     itemBuilder: (BuildContext context, int index) {
      //       // Build individual grid items
      //       return GridTile(
      //         child: Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.all(Radius.circular(10)),
      //             color: yellowF6E18CColor
      //           ),
      //           child: Center(
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Image.asset(img[index], height: 90, width: 90,),
      //                 const SizedBox(height: 10),
      //                 CustomText(
      //                   text: name[index],
      //                   fontSize: 11,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      //     ))
      //   ],
      // ),
    );
  }
}
