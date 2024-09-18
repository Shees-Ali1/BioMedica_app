import 'package:bio_medica/view/const/color.dart';
import 'package:bio_medica/view/home_Screen/home_screen.dart';
import 'package:bio_medica/view/navbar/nav_bar.dart';
import 'package:bio_medica/drawer%20items/privacy_policy.dart';
import 'package:bio_medica/view/course/result_screen.dart';
import 'package:bio_medica/widget/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/subscription_controller.dart';
import '../widget/custom_route.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(13.r),
                bottomRight: Radius.circular(13.r),
              ),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 45.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: SizedBox(
                              height: 38.h,
                              width: 38.h,
                              child: Image.asset(
                                'assets/images/back_icon.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          CustomText(
                            text: "Subscription",
                            textColor: primaryColor,
                            fontWeight: FontWeight.bold,
                            fontsize: 22.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: secondaryColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 46.h),
                SizedBox(
                  width: 300.w,
                  height: 76.h,
                  child: Center(
                    child: CustomText(
                      text: 'Please choose the plan that best suits your needs.',
                      textColor: whiteColor,
                      fontWeight: FontWeight.w700,
                      fontsize: 24.sp,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 22.h),
                /// Free Trial Container
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        CustomRoute.navigateTo(context, AppNavBar());
                      },
                      child: Container(
                        width: 134.w,
                        height: 139.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color.fromRGBO(1, 203, 196, 0.53),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(7.51.r),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 8.h),
                            CustomText(
                              text: 'Free Trial',
                              textColor: Color.fromRGBO(44, 54, 88, 1),
                              fontWeight: FontWeight.w700,
                              fontsize: 16.sp,
                            ),
                            SizedBox(height: 3.h),
                            CustomText(
                              text: '1 Week',
                              textColor: Color.fromRGBO(44, 54, 88, 1),
                              fontWeight: FontWeight.w600,
                              fontsize: 12.sp,
                            ),
                            SizedBox(height: 6.h),
                            SizedBox(
                              height: 32.h,
                              width: 112.w,
                              child: CustomText(
                                text: 'Access the 4 free courses',
                                textColor: Color.fromRGBO(44, 54, 88, 1),
                                fontWeight: FontWeight.w500,
                                fontsize: 10.sp,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            SizedBox(
                              height: 20.h,
                              width: 106.w,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: greenColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.03.r),
                                  ),
                                ),
                                child: CustomText(
                                  text: 'Free',
                                  textColor: whiteColor,
                                  fontWeight: FontWeight.w700,
                                  fontsize: 7.51.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 21.w),
                    /// Premium Container
                    GestureDetector(
                      onTap: () {
                        Get.find<SubscriptionService>().unlockPremium();
                        Navigator.pop(context);

                      },
                      child: Container(
                        width: 134.w,
                        height: 139.h,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(12, 192, 223, 1),
                          border: Border.all(
                            color: Color.fromRGBO(151, 142, 240, 0.26),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(7.51.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              SizedBox(height: 2.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: 'Premium',
                                    textColor: whiteColor,
                                    fontWeight: FontWeight.w700,
                                    fontsize: 20.sp,
                                  ),
                                  SizedBox(
                                    height: 15.02.h,
                                    width: 15.02.w,
                                    child: Image.asset('assets/images/crown.png'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Row(
                                children: [
                                  CustomText(
                                    text: '\$ 14.99',
                                    textColor: Color.fromRGBO(0, 28, 49, 1),
                                    fontWeight: FontWeight.w600,
                                    fontsize: 16.sp,
                                  ),
                                  CustomText(
                                    text: '/Month',
                                    textColor: whiteColor,
                                    fontWeight: FontWeight.w500,
                                    fontsize: 10.sp,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 34.h,
                                width: 112.w,
                                child: CustomText(
                                  text: 'Access to unlimited premium features.',
                                  textColor: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontsize: 10.sp,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              SizedBox(
                                height: 20.h,
                                width: 106.w,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: buttonColor2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.03.r),
                                    ),
                                  ),
                                  child: CustomText(
                                    text: 'UPGRADE',
                                    textColor: whiteColor,
                                    fontWeight: FontWeight.w700,
                                    fontsize: 7.51.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 43.h),
                /// Text Span
                SizedBox(
                  width: 307.w,
                  child: RichText(
                    text: TextSpan(
                      text: 'By continuing the purchase, you acknowledge that you have read our ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        fontFamily: 'jost',
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms & Condition',
                          style: TextStyle(
                            color: greenColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            fontFamily: 'jost',
                          ),
                        ),
                        TextSpan(
                          text: ' and that you agree to our ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            height: 1.5,
                            fontFamily: 'jost',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color: greenColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                            fontFamily: 'jost',
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(() => PrivacyPolicy());
                            },
                        ),

                      ],
                    ),
                  ),
                ),

                SizedBox(height: 13.89.h),

                /// Free Trial Users Container
                Container(
                  height: 150.45.h,
                  width: 302.68.w,
                  decoration: BoxDecoration(
                    color: tapColor,
                    borderRadius: BorderRadius.circular(13.31.r),
                    border: Border.all(
                      color: Color.fromRGBO(
                          8, 41, 66, 1), // Dark blue border color
                      width: 1.0.w, // Set the border width as needed
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 115.61.h,
                      width: 263.w,
                      child: Column(
                        children: [
                          CustomText(
                            text: 'Free Trial Users',
                            textColor: whiteColor,
                            fontWeight: FontWeight.w700,
                            fontsize: 13.23.sp,
                          ),
                          SizedBox(height: 6.61),
                          CustomText(
                            text:
                                "As a Free user, you can only preview 4 courses.To get full access to the entirety of the app's courses and features, become a Premium member now!",
                            textColor: whiteColor,
                            fontWeight: FontWeight.w600,
                            fontsize: 11.57.sp,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
