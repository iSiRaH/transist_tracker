import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:transist_tracker/data/onboarding_data.dart';
import 'package:transist_tracker/pages/onboarding_screens/welcome_page.dart';
import 'package:transist_tracker/pages/signup_page.dart';
import 'package:transist_tracker/utils/colors.dart';
import 'package:transist_tracker/widgets/reusable/custom_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    final onboardingData = OnboardingData.onboardingDataList;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  PageView(
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(() {
                        isLastPage = index == 2;
                      });
                    },
                    children: [
                      WelcomePage(
                        title: onboardingData[0].title,
                        description: onboardingData[0].description,
                        imgUrl: onboardingData[0].imageUrl,
                      ),
                      WelcomePage(
                        title: onboardingData[1].title,
                        description: onboardingData[1].description,
                        imgUrl: onboardingData[1].imageUrl,
                      ),
                      WelcomePage(
                        title: onboardingData[2].title,
                        description: onboardingData[2].description,
                        imgUrl: onboardingData[2].imageUrl,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 90,
                    left: 0,
                    right: 0,
                    child: isLastPage 
                    ? GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => SignupPage()
                          ),
                        );
                      },
                      child: CustomButton(
                        description: isLastPage ? "Get Started" : "Next",
                        color: mainYellow,
                      ),
                    )
                    : GestureDetector(
                      onTap: () {
                        _controller.animateToPage(_controller.page!.toInt() + 1,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut
                        );
                      },
                      child: CustomButton(
                        description: isLastPage ? "Get Started" : "Next",
                        color: mainYellow,
                      ),
                    ),
                  ),
        
                  // dot container
                  Container(
                    alignment: Alignment(0, 0.9),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: WormEffect(
                        activeDotColor: mainYellow,
                        dotColor: mainAsh,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
