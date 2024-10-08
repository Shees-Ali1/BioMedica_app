import 'package:bio_medica/controller/nav_bar_controller.dart';
import 'package:bio_medica/view/const/color.dart';
import 'package:bio_medica/view/const/image_assets.dart';
import 'package:bio_medica/view/profile/edit_profile_screen.dart';
import 'package:bio_medica/drawer%20items/subscription_screen.dart';
import 'package:bio_medica/widget/custom_button.dart';
import 'package:bio_medica/widget/custom_search.dart';
import 'package:bio_medica/widget/custom_text.dart';
import 'package:bio_medica/widget/custom_textfield.dart';
import 'package:bio_medica/drawer%20items/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget/loading_percentage_circle.dart';
import 'goal_settings.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final NavBarController navBarController=Get.put(NavBarController());
//  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const AppDrawer(),
      // key: _scaffoldKey,
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
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 5.h),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle
                        ),
                        width: MediaQuery.of(context).size.width < 360 ? 30.w : 38.w,
                        height: MediaQuery.of(context).size.width < 360 ? 30.h : 38.h,
                        child: GestureDetector(
                          onTap: () {
                            // Open the drawer using the scaffold key
                            navBarController.openDrawer(context);
                          },
                          child: Image(
                            image: AssetImage('assets/images/left_side_bar_navigation_Icon.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      CustomText(
                        text: "Profile",
                        textColor: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontsize: 22.sp,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle
                        ),
                        width: MediaQuery.of(context).size.width < 360 ? 30.w : 38.w,
                        height: MediaQuery.of(context).size.width < 360 ? 30.h : 38.h,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => EditProfileScreen());
                          },
                          child: Image(
                            image: AssetImage('assets/images/settings_image.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: secondaryColor,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              /// Profile Image And Name
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                      width: 120,
                      child: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/images/profile_image.png'),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    CustomText(
                      text: 'Merrill Kervin',
                      textColor: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontsize: 23.1,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              /// Quizzes, Courses, Chapters
              Container(
                // height: 65.65.h,
                width: double.infinity.w,
                padding: EdgeInsets.symmetric(vertical: 11.41.h,horizontal: 4.61.w),
                decoration: BoxDecoration(
                  color: Darkcontainer,
                  // Your Darkcontainer can be defined or replaced here
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: Color.fromRGBO(0, 28, 49, 1),
                    // Dark blue color for the border
                    width: 1.w, // Width of the border
                  ),
                ),
                child:Container(
                  color: Darkcontainer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// 22 Quizzes
                      Container(
                        width: 88.45.w,
                        // height: 42.83.h,

                        child: Column(

                          children: [
                            CustomText(text: '22',
                              fontsize: 11.22.sp,
                              textColor: whiteColor,
                              fontWeight: FontWeight.w700,
                            ),
                            CustomText(text: 'Quizzes',
                              fontsize: 11.sp,
                              textColor: buttonColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ) ,),
                      /// Divider
                      Container(
                        width: 1.w,
                        height: 20.83.h,
                        color:Color.fromRGBO(219, 92, 0, 1),
                      ),
                      /// 12 Courses
                      Container(
                        width: 88.45.w,
                        // height: 42.83.h,
                        child: Column(

                          children: [
                            CustomText(text: '12',
                              fontsize: 11.22.sp,
                              textColor: whiteColor,
                              fontWeight: FontWeight.w700,
                            ),
                            CustomText(text: 'Courses',
                              fontsize: 11.sp,
                              textColor: buttonColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ) ,
                      ),
                      Container(
                        width: 1.w,
                        height: 20.83.h,
                        color:Color.fromRGBO(219, 92, 0, 1),
                      ),
                      /// 140 Chapters
                      Container(
                        width: 88.45.w,
                        // height: 42.83.h,
                        child: Column(

                          children: [
                            CustomText(text: '140',
                              fontsize: 11.22.sp,
                              textColor: whiteColor,
                              fontWeight: FontWeight.w700,
                            ),
                            CustomText(text: 'Chapters',
                              fontsize: 11.sp,
                              textColor: buttonColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ) ,
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.35.h,
              ),

              /// TAB MyCourses,Goals,Resources
              Container(

                height: 37.92.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  color: Darkcontainer,
                  // Your Darkcontainer can be defined or replaced here
                  borderRadius: BorderRadius.circular(11.38.r),
                  border: Border.all(
                    color: Color.fromRGBO(0, 28, 49, 1),
                    // Dark blue color for the border
                    width: 1.w, // Width of the border
                  ),
                ),
                child: Row(
                  children: [
                    /// My Courses Tab
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: Container(
                            width: 100.81.w,
                            height: 30.34.h,
                            decoration: BoxDecoration(
                              color: _selectedIndex == 0
                                  ? Colors.cyan
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(7.58.r),
                            ),
                            child: Center(
                              child: CustomText(
                                text: 'My Courses',
                                fontsize: 14.sp,
                                textColor: _selectedIndex == 0
                                    ? Colors.white
                                    : Color.fromRGBO(182, 182, 182, 1),
                                fontWeight: _selectedIndex == 0
                                    ? FontWeight.w700
                                    : FontWeight.w700,

                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    /// Divider
                    VerticalDivider(
                      thickness: 1, // Width of the line
                      color: Color.fromRGBO(219, 92, 0, 1), // Color of the line
                      width: 2.w, // Space around the divider
                      indent: 10, // Space above the divider
                      endIndent: 10, // Space below the divider
                    ),
                    SizedBox(width: 3.w),
                    /// Goals Tab
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        child: Container(
                          width: 100.81.w,
                          height: 30.34.h,
                          decoration: BoxDecoration(
                            color: _selectedIndex == 1
                                ? Colors.cyan
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(7.58.r),
                          ),
                          child: Center(
                            child: CustomText(
                              text: 'Goals',
                              fontsize: 14.sp,
                              textColor: _selectedIndex == 1
                                  ? Colors.white
                                  :Color.fromRGBO(182, 182, 182, 1),
                              fontWeight: _selectedIndex == 1
                                  ? FontWeight.w700
                                  : FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    /// Divider
                    VerticalDivider(
                      thickness: 1, // Width of the line
                      color: Color.fromRGBO(219, 92, 0, 1), // Color of the line
                      width: 2.w, // Space around the divider
                      indent: 10, // Space above the divider
                      endIndent: 10, // Space below the divider
                    ),

                    /// Resources Tab
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          child: Container(
                            width: 100.81.w,
                            height: 30.34.h,
                            decoration: BoxDecoration(
                              color: _selectedIndex == 2
                                  ? Colors.cyan
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(7.58.r),
                            ),
                            child: Center(
                              child: CustomText(
                                text: 'Resources',
                                fontsize: 14.sp,
                                textColor: _selectedIndex == 2
                                    ? Colors.white
                                    : Color.fromRGBO(182, 182, 182, 1),
                                fontWeight: _selectedIndex == 2
                                    ? FontWeight.w700
                                    : FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.08.h),

              if (_selectedIndex == 0)

              /// My Courses Screen
                Column(
                  children: [
                    /// Course Container1
                    Container(
                      width: double.infinity.w,
                      // height: 117.h,
                      decoration: BoxDecoration(
                        color: Darkcontainer,
                        // Your Darkcontainer can be defined or replaced here
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Color.fromRGBO(0, 28, 49, 1),
                          // Dark blue color for the border
                          width: 1.w, // Width of the border
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11.39.w),
                        child: Row(
                          children: [
                            Container(
                              width: 91.01.w,
                              height: 91.01.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                                child: Image(
                                  image: AssetImage('assets/images/profilescren_image.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            SizedBox(width: 9.62.w),
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 12.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 146.w,
                                    height: 55.h,
                                    child: CustomText(
                                      text:
                                      "UX Research in Digital Product Design: Master Class",
                                      textColor: whiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontsize: 11.sp,
                                    ),
                                  ),
                                  Container(
                                    width: 180.w,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          text: "22 of 33 chapters",
                                          textColor: buttonColor,
                                          fontWeight: FontWeight.w700,
                                          fontsize: 11.sp,
                                        ),
                                        LoadingPercentageCircle(
                                          percentage: 15,
                                          // Example percentage
                                          size: 38,
                                          // Example size
                                          strokeWidth: 6,
                                          // Example stroke width
                                          backgroundColor: mainTextColor!,
                                          progressColor: buttonColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 7.h),
                    /// Course Container2
                    Container(
                      width: double.infinity.w,
                      // height: 117.h,
                      decoration: BoxDecoration(
                        color: Darkcontainer,
                        // Your Darkcontainer can be defined or replaced here
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Color.fromRGBO(0, 28, 49, 1),
                          // Dark blue color for the border
                          width: 1.w, // Width of the border
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 11.39.w),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 91.01.w,
                              height: 91.01.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                                child: Image(
                                  image: AssetImage('assets/images/ux_design_image_2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 9.62.w),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 12.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 146.w,
                                    height: 56.h,
                                    child: CustomText(
                                      text:
                                      "UX Research in Digital Product Design: Master Class",
                                      textColor: whiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontsize: 11.sp,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 180.w,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          text: "10 of 31 chapters",
                                          textColor: buttonColor,
                                          fontWeight: FontWeight.w700,
                                          fontsize: 11.sp,
                                        ),
                                        LoadingPercentageCircle(
                                          percentage: 45,
                                          // Example percentage
                                          size: 38,
                                          // Example size
                                          strokeWidth: 6,
                                          // Example stroke width
                                          backgroundColor: mainTextColor!,
                                          progressColor: buttonColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              if (_selectedIndex == 1)

              /// Set Goals Text and Image
                Column(
                  children: [
                    /// Set Goals Image and Text
                    GestureDetector(
                      onTap: (){
                        Get.to(() => GoalSettings());
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 93.w,
                          height: 28.h,
                          decoration: BoxDecoration(
                            color: Darkcontainer,
                            // Your Darkcontainer can be defined or replaced here
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                              color: Color.fromRGBO(0, 28, 49, 1),
                              // Dark blue color for the border
                              width: 1.w, // Width of the border
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal:6.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image(
                                    image: AssetImage(
                                        'assets/images/set_goals_icon.png')),
                                CustomText(
                                    text: 'Set Goals',
                                    textColor: buttonColor,
                                    fontsize: 11.sp,
                                    fontWeight: FontWeight.w600),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.08.h),

                    /// Goal Progress Container
                    Container(
                      width: double.infinity.w,
                      // height: 125.h,
                      decoration: BoxDecoration(
                        color: Darkcontainer,
                        // Your Darkcontainer can be defined or replaced here
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Color.fromRGBO(0, 28, 49, 1),
                          // Dark blue color for the border
                          width: 1.w, // Width of the border
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 11.37.w,),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 91.01.w,
                              height: 100.01.h,
                              child:ClipRRect(
                                borderRadius: BorderRadius.circular(5.69.r), // Apply the same radius here
                                child: Image(
                                  image: AssetImage('assets/images/profilescren_image.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 6.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 14.h),
                                SizedBox(
                                  width: 184.w,
                                  // height: 42.h,
                                  child: CustomText(
                                    text:
                                    "UX Research in Digital Product Design: Master Class",
                                    textColor: whiteColor,
                                    fontWeight: FontWeight.w600,
                                    fontsize: 11.sp,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10,),
                                  child: Container(
                                    width: 192.w,
                                    child: Row(
                                      children: [
                                        CustomText(
                                          text: "Goal Progress",
                                          textColor: buttonColor,
                                          fontWeight: FontWeight.w700,
                                          fontsize: 12.sp,
                                        ),
                                        SizedBox(width: 19.w),

                                        /// Quiz Loading progress
                                        Column(
                                          children: [
                                            LoadingPercentageCircle(
                                              percentage: 15,
                                              // Example percentage
                                              size: 40,
                                              // Example size
                                              strokeWidth: 6,
                                              // Example stroke width
                                              backgroundColor: mainTextColor!,
                                              progressColor: buttonColor,
                                            ),
                                            SizedBox(height: 2.5.h),
                                            CustomText(
                                              text: "Quiz",
                                              textColor: buttonColor,
                                              fontWeight: FontWeight.w700,
                                              fontsize: 9.sp,
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 8.w),


                                        /// Chapters Loading progress
                                        Padding(
                                          padding:EdgeInsets.symmetric(vertical: 5.h),
                                          child: Column(
                                            children: [
                                              LoadingPercentageCircle(
                                                percentage: 15,
                                                // Example percentage
                                                size: 40,
                                                // Example size
                                                strokeWidth: 6,
                                                // Example stroke width
                                                backgroundColor:mainTextColor!,
                                                progressColor: buttonColor2,
                                              ),
                                              SizedBox(height: 2.5.h),
                                              CustomText(
                                                text: "Chapters",
                                                textColor: buttonColor2,
                                                fontWeight: FontWeight.w700,
                                                fontsize: 9.sp,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              // SizedBox(height: 19.08.h),
              if (_selectedIndex == 2)
                Column(
                  children: [
                    /// UX Resources ZIP Container
                    Container(
                      width: double.infinity.w,
                      // height: 73.23.h,
                      decoration: BoxDecoration(
                        color: Darkcontainer,
                        // Your Darkcontainer can be defined or replaced here
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Color.fromRGBO(12, 192, 223, 1),
                          // Dark blue color for the border
                          width: 1.w, // Width of the border
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:13.63.w ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                /// Zip File Images
                                SizedBox(
                                  width: 38.04.w,
                                  height: 38.04.h,
                                  child: Image.asset('assets/images/ux_research_file.png.png')
                                ),
                                SizedBox(width: 11.41.w),
                                /// Zip File Text
                                Padding(
                                  padding:EdgeInsets.symmetric(vertical:15.21.h ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "UX Research.zip",
                                        textColor: whiteColor,
                                        fontWeight: FontWeight.w700,
                                        fontsize: 13.31.sp,
                                      ),
                                      SizedBox(height: 3.8.h),
                                      CustomText(
                                        text: "Size: 10 MB",
                                        textColor: Color.fromRGBO(216, 221, 231, 1),
                                        fontWeight: FontWeight.w600,
                                        fontsize: 10.41.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                                onTap: (){},
                                child: SizedBox(
                                    height: 16.47.h,
                                    width: 15.68.w,
                                    child: Image.asset('assets/images/download_icon.png',fit: BoxFit.contain,),
                                ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.22.h),
                    /// Courser  Container
                    Container(
                      width: double.infinity.w,
                      // height: 73.23.h,
                      decoration: BoxDecoration(
                        color: Darkcontainer,
                        // Your Darkcontainer can be defined or replaced here
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Color.fromRGBO(12, 192, 223, 1),
                          // Dark blue color for the border
                          width: 1.w, // Width of the border
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:13.63.w ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                /// Zip File Images
                                SizedBox(
                                    width: 38.04.w,
                                    height: 38.04.h,
                                    child: Image.asset('assets/images/ux_research_file.png')
                                ),
                                SizedBox(width: 11.41.w),
                                /// Zip File Text
                                Padding(
                                  padding:EdgeInsets.symmetric(vertical:15.21.h ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "Courser_LandingPage.fig",
                                        textColor: whiteColor,
                                        fontWeight: FontWeight.w700,
                                        fontsize: 13.31.sp,
                                      ),
                                      SizedBox(height: 3.8.h),
                                      CustomText(
                                        text: "Size: 5.2 MB",
                                        textColor: Color.fromRGBO(216, 221, 231, 1),
                                        fontWeight: FontWeight.w600,
                                        fontsize: 10.41.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: SizedBox(
                                height: 16.47.h,
                                width: 15.68.w,
                                child: Image.asset('assets/images/download_icon.png',fit: BoxFit.contain,),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.22.h),
                    /// Courser Dashboard Container
                    Container(
                      width: double.infinity.w,
                      // height: 73.23.h,
                      decoration: BoxDecoration(
                        color: Darkcontainer,
                        // Your Darkcontainer can be defined or replaced here
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: Color.fromRGBO(12, 192, 223, 1),
                          // Dark blue color for the border
                          width: 1.w, // Width of the border
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:13.63.w ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                /// Zip File Images
                                SizedBox(
                                    width: 38.04.w,
                                    height: 38.04.h,
                                    child: Image.asset('assets/images/ux_research_file.png')
                                ),
                                SizedBox(width: 11.41.w),
                                /// Zip File Text
                                Padding(
                                  padding:EdgeInsets.symmetric(vertical:15.21.h ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "Courser_Dashboard.fig",
                                        textColor: whiteColor,
                                        fontWeight: FontWeight.w700,
                                        fontsize: 13.31.sp,
                                      ),
                                      SizedBox(height: 3.8.h),
                                      CustomText(
                                        text: "Size: 5.2 MB",
                                        textColor: Color.fromRGBO(216, 221, 231, 1),
                                        fontWeight: FontWeight.w600,
                                        fontsize: 10.41.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: SizedBox(
                                height: 16.47.h,
                                width: 15.68.w,
                                child: Image.asset('assets/images/download_icon.png',fit: BoxFit.contain,),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: 120.h),

            ],
          ),
        ),
      ),
    );
  }
}