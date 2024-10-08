import 'package:bio_medica/drawer%20items/privacy_policy.dart';
import 'package:bio_medica/view/auth/login_view/login_view.dart';
import 'package:bio_medica/view/const/color.dart';
import 'package:bio_medica/view/const/image_assets.dart';
import 'package:bio_medica/view/profile/edit_profile_screen.dart';
import 'package:bio_medica/widget/custom_button.dart';
import 'package:bio_medica/widget/custom_route.dart';
import 'package:bio_medica/widget/custom_text.dart';
import 'package:bio_medica/widget/custom_textfield.dart';
import 'package:bio_medica/widget/custom_textfield1.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool isChecked = false;
  File? _image; // Variable to store the selected image

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _takePhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _showImageSourceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: CustomText(
            text: 'Choose an Option',
            textColor: buttonColor2,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _pickImage(); // Pick image from gallery
                },
                child: CustomText(
                  text: 'Gallery',
                  textColor: secondaryColor,
                  fontWeight: FontWeight.w500,
                  fontsize: 15.sp,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _takePhoto(); // Take photo with camera
                },
                child: CustomText(
                  text: 'Camera',
                  textColor: secondaryColor,
                  fontWeight: FontWeight.w500,
                  fontsize: 15.sp,
                ),
              ),
            ],
          ),
          backgroundColor: primaryColor, // Change this to your desired color
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.ellipse2), fit: BoxFit.fill)),
                child: Column(
                  children: [
                    SizedBox(height: 30.h,),
                    SizedBox(
                      height: 139.h,
                      width: 130.w,
                      child: Image.asset(
                        AppImages.biomedicalogo,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CustomText(
                        textAlign: TextAlign.center,
                        text: 'Sign up ',
                        fontsize: 35.sp,
                        textColor: Color.fromRGBO(0, 26, 46, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 11.h),
                    Container(
                      width: 280.w,

                      child: CustomText(
                        textAlign: TextAlign.center,
                        text: 'Explore new content, manage your profile, and connect with others—all from here',
                        fontsize: 14.sp,
                        textColor: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 15.h),

                    /// Image Upload
                    GestureDetector(
                      onTap: () => _showImageSourceDialog(context), // Open image picker on tap
                      child: Container(
                        height: 106.h,
                        width: 106.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: _image == null
                            ? Image.asset('assets/images/upload_image_sign_up.png', fit: BoxFit.contain)
                            : ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.file(
                            _image!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),
                  ],
                ),
              ),
              SizedBox(height: 18.h),
              // Remaining code...
              Container(
                width: 311.w,
                child: CustomTextField1(
                  hintText: 'Your name',
                  prefixIcon: Icons.person,
                  hintTextSize: 14.65.sp,
                  obscuringCharacter: null,
                ),
              ),
              SizedBox(height: 16.25.h),
              Container(
                width: 311.w,
                child: CustomTextField1(
                  hintText: 'Your Email',
                  hintTextSize: 14.65.sp,
                  prefixIcon: Icons.email,
                ),
              ),
              SizedBox(height: 14.25.h),
              Container(
                width: 311.w,
                child: CustomTextField1(
                  hintText: 'Your Password',
                  prefixIcon: Icons.lock,
                  obscureText: true,
                  obscuringCharacter: '*',
                  suffixIcon: Icons.visibility,
                  hintTextSize: 14.65.sp,
                ),
              ),
              SizedBox(height: 24.25.h),
              /// Continue Button
              CustomButton(
                textSize: 19.sp,
                height: 51.h,
                width: 311.w,
                color: buttonColor,
                onTap: () {},
                title: 'Continue',
                radius: 13.31.r,
              ),
              SizedBox(height: 14.25.h),
              /// Text Span
              Center(
                child: SizedBox(
                  width: 307.w, // Adjust this width as needed
                  child: RichText(
                    textAlign: TextAlign.center, // Align text in the center
                    text: TextSpan(
                      text: 'By signing up you agree to our ',
                      style: TextStyle(
                        color: Color.fromRGBO(17, 24, 39, 1),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.5.h,
                        fontFamily: 'jost',
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms of Services',
                          style: TextStyle(
                            color: Color.fromRGBO(19, 64, 100, 1),
                            fontWeight: FontWeight.w600,
                            height: 1.5.h,
                            fontFamily: 'jost',
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigate to Terms of Service
                            },
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: Color.fromRGBO(17, 24, 39, 1),
                            height: 1.5.h,
                            fontFamily: 'jost',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color: Color.fromRGBO(19, 64, 100, 1),
                            fontWeight: FontWeight.w600,
                            height: 1.5.h,
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
              ),
              SizedBox(height: 45.h),
              /// Already have an Account
              GestureDetector(
                onTap: () {
                  CustomRoute.navigateTo(context, LoginView());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      textAlign: TextAlign.center,
                      text: 'Already have an account? ',
                      fontsize: 15.sp,
                      textColor: Color(0xff111827),
                      fontWeight: FontWeight.w300,
                    ),
                    CustomText(
                      textAlign: TextAlign.center,
                      text: 'Sign in',
                      fontsize: 15.sp,
                      textColor: buttonColor2,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.h),
            ],
          ),
        ),
      ),
    );
  }
}
