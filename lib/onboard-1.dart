import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  final List<OnboardData> onboardData = [
    OnboardData(
      image: "assets/images/onboard-1.png",
      title: "Life is short and the\nworld is ",
      highlightWord: "wide",
      description: "At Friends tours and travel, we customize reliable and trustworthy educational tours to destinations all over the world.",
      vector: "assets/images/vector-1.svg",
    ),
    OnboardData(
      image: "assets/images/onboard-2.png",
      title: "It's a big world out\nthere go ",
      highlightWord: "explore",
      description: "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
      vector: "assets/images/vector-2.svg",
    ),
    OnboardData(
      image: "assets/images/onboard-3.png",
      title: "People don't take trips,\ntrips take ",
      highlightWord: "people",
      description: "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
      vector: "assets/images/vector-3.svg",
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onboardData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return OnboardPage(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  data: onboardData[index],
                  isLastPage: index == onboardData.length - 1,
                  onNextPressed: () {
                    if (index < onboardData.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      // Navigate to home or login screen
                    }
                  },
                  pageController: _pageController,
                );
              },
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class OnboardPage extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final OnboardData data;
  final bool isLastPage;
  final VoidCallback onNextPressed;
  final PageController pageController;

  const OnboardPage({
    required this.screenWidth,
    required this.screenHeight,
    required this.data,
    required this.isLastPage,
    required this.onNextPressed,
    required this.pageController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data.image),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.075,
              left: screenWidth * 0.85,
              child: GestureDetector(
                onTap: () {
                  // Handle skip (Navigate to home screen)
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Gill Sans",
                    color: Color(0xFFCAEAFF),
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 35, 20, 0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 80,
                  child: Stack(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: data.title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Geometr415 Blk BT",
                                height: 36 / 30,
                              ),
                            ),
                            TextSpan(
                              text: data.highlightWord,
                              style: TextStyle(
                                color: Color(0xFFFF7029),
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Geometr415 Blk BT",
                                height: 36 / 30,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Positioned(
                        top: 70,
                        left: 160,
                        child: SvgPicture.asset(data.vector),
                      ),
                    ],
                  ),
                ),
                Text(
                  data.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7D848D),
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    fontFamily: "Gill Sans",
                    height: 24 / 16,
                  ),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xFF0D6EFD),
                    dotColor: Color(0xFFCAEAFF),
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
                Container(
                  width: screenWidth,
                  child: ElevatedButton(
                    onPressed: onNextPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0D6EFD),
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      isLastPage ? "Get Started" : "Next",
                      style: TextStyle(
                        fontFamily: "SUDisplay",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 20 / 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class OnboardData {
  final String image;
  final String title;
  final String highlightWord;
  final String description;
  final String vector;

  OnboardData({
    required this.image,
    required this.title,
    required this.highlightWord,
    required this.description,
    required this.vector,
  });
}
