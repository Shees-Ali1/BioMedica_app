import 'package:bio_medica/view/const/color.dart';
import 'package:bio_medica/view/const/image_assets.dart';
import 'package:bio_medica/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingFour extends StatelessWidget {
  const OnBoardingFour({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Incredible Keyword Search Engine',
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
                "Find exactly what you need in seconds! Our powerful keyword search engine is designed to deliver instant results, so you can easily access all the content you're looking for. Whether it's devices, courses, or detailed explanations, type in a keyword, and everything you need will be right at your fingertips—fast, accurate, and effortless.",
                fontsize: 14.sp,
                textColor: textColor,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15.9.h,
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
                    height: 65.h,
                  ),
                  SizedBox(
                      height: 286.h,
                      width: 287.w,
                      child: Image.asset(
                        "assets/images/onboarding_screen_four_image.png",
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    height: 38.h,
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
