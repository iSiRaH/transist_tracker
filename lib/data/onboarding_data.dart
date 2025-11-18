import 'package:transist_tracker/models/onboarding_model.dart';

class OnboardingData {
  static final List<OnboardingModel> onboardingDataList = [
    OnboardingModel(
        title: "Welcome to the app",
        description:
            "Your hassle-free bus seat bookingsolution! Easily reserve your seat anytime,anywhere with just a few taps.",
        imageUrl: "assets/images/Bus_Image.png"),
    OnboardingModel(
        title: "Find routes and stops easily",
        description:
            "Quickly search forbus Routes, view detailed stop information and plan journey in advance.",
        imageUrl: "assets/images/Onboarding2.png"),
    OnboardingModel(
        title: "Track transport live",
        description:
            "See exactly where your bus is on the map and get accurate arrival times, So you never miss a ride.",
        imageUrl: "assets/images/Onboarding3.png"),
  ];
}
