import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learning_app/core/helpers/spacing.dart';
import 'package:learning_app/core/theme/colors_app.dart';
import 'package:learning_app/core/theme/my_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  const OnBoardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: ColorsApp.darkBlueColor,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3.h,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(100),
          Text(
            title,
            style: MyFonts.font22White,
          ),
          verticalSpace(10),
          Text(
            subTitle,
            style: MyFonts.font15WhiteFeded,
            textAlign: TextAlign.center,
          ),
          verticalSpace(60),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      backgroundColor: ColorsApp.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Choose Language",
                    style: MyFonts.font22White,
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Already have an account?",
              style: MyFonts.font15WhiteFeded,
            ),
            Text(
              " Login",
              style: MyFonts.font15WhiteFeded.copyWith(
                  color: ColorsApp.primaryColor, fontWeight: FontWeight.bold),
            ),
          ])
        ],
      ),
    );
  }
}
