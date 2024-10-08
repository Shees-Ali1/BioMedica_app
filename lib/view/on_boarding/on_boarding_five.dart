import 'package:bio_medica/view/const/color.dart';
import 'package:bio_medica/view/const/image_assets.dart';
import 'package:bio_medica/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingFive extends StatelessWidget {
  const OnBoardingFive({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(viewportFraction: 1);

    return Scaffold(
      backgroundColor: secondaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 80.h,
          ),
          ///  Incredible Keyword Search Engine.
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Monthly Updates and New Courses',
                    style: GoogleFonts.jost(
                      fontSize: 28.sp,
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: '.', // The full stop in orange color
                    style: TextStyle(
                      fontSize: 28.sp,
                      color: buttonColor2, // Set the color to orange
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          /// Long Text
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),

            child: CustomText(
                textAlign: TextAlign.center,
                text:
                "Stay ahead with fresh content! Every month, we bring you new course releases, updates, and cutting-edge information. Our commitment is to continuously expand and refine the app, keeping you up to date with the latest advancements in the field of biomedical engineering and the MedTech industry as a whole. You'll never stop learning!",
                fontsize: 14.sp,
                textColor: textColor,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 22.9.h,
          ),
          /// Background Blue Circle Image & Center Image
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.onboardingellipse),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  SizedBox(
                    height: 89.h,
                  ),
                  SizedBox(
                      height: 267.h,
                      width: 222.w,
                      child: Image.asset(
                        "assets/images/onboarding_screen_five_image.png",
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    height: 33.h,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
