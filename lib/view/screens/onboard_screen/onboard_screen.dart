import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vsfm/core/colors/app_colors.dart';
import 'package:vsfm/view/screens/home_screen/home_screen.dart';
import 'package:vsfm/view/screens/login_screen/login_screen.dart';
import 'package:vsfm/view/widget/custom_text.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _pageController = PageController();
  bool onlastPage = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        // padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SafeArea(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    if (value != 3) {
                      setState(() {
                        onlastPage = false;
                      });
                    } else {
                      setState(() {
                        onlastPage = true;
                      });
                    }
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/images/pngs/martial_arts.png",
                                height: 153,
                                width: 300,
                              ),
                            ),
                            // const SizedBox(height: 20),
                            CustomText(
                              text: "MARTIAL ARTS",
                              fontColor: Colors.white,
                              fontSize: 26,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/images/pngs/bouncer.png",
                                height: 153,
                                width: 300,
                              ),
                            ),
                            // const SizedBox(height: 20),
                            CustomText(
                              text: "BOUNCER",
                              fontColor: Colors.white,
                              fontSize: 26,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/images/pngs/housekeep.png",
                                height: 153,
                                width: 300,
                              ),
                            ),
                            // const SizedBox(height: 20),
                            CustomText(
                              text: "HOUSE KEEPING",
                              fontColor: Colors.white,
                              fontSize: 26,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/images/pngs/security_guard.png",
                                height: 153,
                                width: 300,
                              ),
                            ),
                            // const SizedBox(height: 20),
                            CustomText(
                              text: "SECURITY GUARD",
                              fontColor: Colors.white,
                              fontSize: 26,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: yellowF6E18CColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28)
                )
              ),
              child: Column(
                children: [
                  SmoothPageIndicator(
              controller: _pageController,
              count: 4,
              effect: ExpandingDotsEffect(
                dotColor: Colors.black,
                activeDotColor: Colors.black
              ),
            ),
                  const SizedBox(height: 50),
                  onlastPage
                ? 
                GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                              },
                              child: Container(
                                  height: 48,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25)),
                                      color: blackColor),
                                  child: Center(
                                      child: CustomText(
                                    text: "GET STARTED",
                                    fontColor: Colors.white,
                                    // style: GoogleFonts.openSans(
                                    //     textStyle: const TextStyle(
                                    //         fontSize: 16,
                                    //         fontWeight: bold,
                                    //         color: whiteFFFFFFColor)),
                                  ))),
                            )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        child: Container(
                            height: 48,
                            width: 100,
                            child: Center(
                                child: CustomText(
                              text: "SKIP",
                            ))),
                      ),
                      GestureDetector(
                              onTap: () {
                                _pageController.nextPage(
                                    curve: Curves.easeIn,
                                    duration: Duration(microseconds: 500));
                              },
                              child: Container(
                                  height: 48,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25)),
                                      color: blackColor
                                      ),
                                  child: Center(
                                      child: CustomText(
                                    text: "NEXT",
                                    fontColor: Colors.white,
                                  )
                                  )
                                  ),
                            )
                    ],
                  ),
                ],
              )
              
            ),
            
          ],
        ),
      ),
    );
  }
}
