import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/constants/assets.dart';
import 'package:learning_app/core/helpers/spacing.dart';
import 'package:learning_app/core/theme/colors_app.dart';
import 'package:learning_app/core/theme/my_fonts.dart';
import 'package:learning_app/on_bording/widget/build_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int count = 3;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(controller: pageController, children: [
            OnBoardingPage(
              imagePath: Assets.imagesOnboardingFrame1,
              title: 'Welcome to Learning App',
              subTitle:
                  'Learn anything from anywhere, with\n expert instructors and interactive lessons',
            ),
            OnBoardingPage(
              imagePath: Assets.imagesOnboardingFrame2,
              title: 'Welcome to Learning App',
              subTitle:
                  'Learn anything from anywhere, with\n expert instructors and interactive lessons',
            ),
            OnBoardingPage(
              imagePath: Assets.imagesOnboardingFrame3,
              title: 'Welcome to Learning App',
              subTitle:
                  'Learn anything from anywhere, with\n expert instructors and interactive lessons',
            ),
          ]),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.42,
            bottom: 380.h,
            child: SmoothPageIndicator(
              effect: WormEffect(
                activeDotColor: ColorsApp.orangColor,
                dotWidth: 10.h,
                dotHeight: 10.h,
              ),
              controller: pageController,
              count: count,
            ),
          )
        ],
      ),
    );
  }
}
