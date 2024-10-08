import 'package:bio_medica/controller/nav_bar_controller.dart';
import 'package:bio_medica/view/const/color.dart';
import 'package:bio_medica/view/const/image_assets.dart';
import 'package:bio_medica/view/home_Screen/quizCourses.dart';
import 'package:bio_medica/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuizDetails extends StatefulWidget {
  @override
  State<QuizDetails> createState() => _QuizDetailsState();
}

class _QuizDetailsState extends State<QuizDetails> {
  final NavBarController navBarController = Get.put(NavBarController());

  final List<String> QuizImages = [
    AppImages.HumanAnatomy,       // Human Anatomy
    AppImages.BioMaterials,       // Bio-Materials
    AppImages.HumanPhyscology,    // Human Physiology
    AppImages.ClinicalEngineering,// Clinical Engineering
    AppImages.ProstheicDevice,    // Prosthetic Devices
    AppImages.Therapeutic,        // Therapeutic Devices
    AppImages.AdvancedDesign,     // Device Design
    AppImages.BioMechanics,       // Bio-Mechanics
    AppImages.MedicalImaging,     // Medical Imaging
    AppImages.BME,                // Intro to BME
    AppImages.Chemistry,          // Chemistry of Life
    AppImages.Biology,            // Intro into Biology
    AppImages.Modelling,          // Modeling and Simulation
    AppImages.Signals,            // Signals and Systems
    AppImages.Phys,               // Physiological Signals & Instrumentation
    AppImages.MRI,                // MRI
    AppImages.Cell,               // Cell & Tissue Engineering
    AppImages.Rehab,              // Rehabilitation Engineering
    AppImages.Bio_nan,            // Bio-Nanotechnology
    AppImages.MedicalIm,          // Medical Imaging Physics
    AppImages.Biostat,            // Biostatistics
    AppImages.Neuro               // Neuro-Engineering
  ];

  final List<String> QuizNames = [
    'Human Anatomy',                     // Matches HumanAnatomy image
    'Bio-Materials',                     // Matches BioMaterials image
    'Human Physiology',                  // Matches HumanPhyscology image
    'Clinical Engineering',              // Matches ClinicalEngineering image
    'Prosthetic Devices',                // Matches ProstheticDevice image
    'Therapeutic Devices',               // Matches Therapeutic image
    'Device Design',                     // Matches AdvancedDesign image
    'Bio-Mechanics',                     // Matches BioMechanics image
    'Medical Imaging',                   // Matches MedicalImaging image
    'Intro to BME',                      // Matches BME image
    'Chemistry of Life',                 // Matches Chemistry image
    'Intro into Biology',                // Matches Biology image
    'Modeling and Simulation',           // Matches Modelling image
    'Signals and Systems',               // Matches Signals image
    'Instrumentation', // Matches Phys image
    'MRI Physics',                               // Matches MRI image
    'Cell & Tissue Engineering',         // Matches Cell image
    'Rehabilitation Engineering',        // Matches Rehab image
    'Bio-Nano\ntechnology',                // Matches Bio_nan image
    'Medical Imaging Physics',           // Matches MedicalIm image
    'Biostatistics',                     // Matches Biostat image
    'Neuro-Engineering'                  // Matches Neuro image
  ];


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
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        width: MediaQuery.of(context).size.width < 360
                            ? 30.w
                            : 38.w,
                        height: MediaQuery.of(context).size.width < 360
                            ? 30.h
                            : 38.h,
                        child: GestureDetector(
                          onTap: () {
                            // Open the drawer using the scaffold key
                            navBarController.openDrawer(context);
                          },
                          child: Image(
                            image: AssetImage(
                                'assets/images/left_side_bar_navigation_Icon.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      CustomText(
                        text: "Quiz Details",
                        textColor: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontsize: 22.sp,
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
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Container(
                width: Get.width * 1.2,
                height: Get.height / 1.2,
                child: GridView.builder(
                  itemCount: QuizImages.length < QuizNames.length ? QuizImages.length : QuizNames.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7.h,

                  ),
                  itemBuilder: (context, index) {


                    return QuizCard(
                      image: QuizImages[index], // Pass image
                      name: QuizNames[index],
                      padding:
                           EdgeInsets.zero,
                    );
                  },
                ),
              ),
              SizedBox(height: 70.h),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizCard extends StatelessWidget {
  final String image;
  final String name;
  final EdgeInsets? padding;

  QuizCard({
    required this.image,
    required this.name,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => QuizCourses(
              QuizNames: name,
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Darkcontainer,
          borderRadius: BorderRadius.circular(9.r),
          border: Border.all(
            width: 1,
            color: Darkcontainer,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 6.57.h, vertical: 6.57.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  image,
                  height: 60.h,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: CustomText(
                  text: name,
                  fontsize: 11.sp,
                  fontWeight: FontWeight.bold,
                  textColor: whiteColor,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
