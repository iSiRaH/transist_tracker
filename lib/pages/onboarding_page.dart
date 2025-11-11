import 'package:flutter/material.dart';
import 'package:transist_tracker/data/onboarding_data.dart';
import 'package:transist_tracker/pages/onboarding_screens/welcome_page.dart';
import 'package:transist_tracker/utils/colors.dart';
import 'package:transist_tracker/widgets/reusable/custom_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final onboardingData = OnboardingData.onboardingDataList;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
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
                  bottom: 20,
                  child: CustomButton(
                    description: "Next",
                    color: mainYellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
