import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutri_mind_application/shared/Constants/text_theme.dart';
import '../../../../shared/Constants/colors.dart';
import '../../../../shared/widgets/default_items.dart';
import '../../../../shared/widgets/screens_widgets.dart';
import 'doctor_widget_for_patient.dart';

class PatientHomeServicesScreen extends StatefulWidget {
  const PatientHomeServicesScreen({Key? key}) : super(key: key);

  @override
  State<PatientHomeServicesScreen> createState() =>
      _PatientHomeServicesScreenState();
}

class _PatientHomeServicesScreenState extends State<PatientHomeServicesScreen> {
  List allServices = [
    {
      "icon": Icons.notes,
      "name": "Notes",
      "rout": "PatientNotesScreen",
    },
    {
      "icon": Icons.email,
      "name": "Motivzone",
      "rout": "PatientMotivzoneScreen",
    },
    {
      "icon": Icons.library_books_outlined,
      "name": "Library",
      "rout": "PatientLibraryScreen",
    },
    {
      "icon": Icons.question_mark,
      "name": "Question",
      "rout": "PatientQuestionScreen",
    },
    {
      "icon": Icons.monitor_weight_outlined,
      "name": "Track Weight",
      "rout": "PatientTrackWeightScreen",
    },
    {
      "icon": Icons.local_fire_department,
      "name": "Track Eating",
      "rout": "PatientTrackEatingScreen",
    },
  ];
  //bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        backPage: 'PatientSetTallScreen',
        pageTitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.sp),
              child: Image(
                image: const AssetImage('assets/images/logo.png'),
                width: 110.w,
              ),
            )
          ],
        ),
        actionIcon: [
          Padding(
            padding: EdgeInsets.only(right: 12.sp),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'PatientNotificationsScreen');
              },
              child: Image(
                image: const AssetImage("assets/images/blackbell.png"),
                height: 20.h,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 25.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SmallTextField(
                hintText: 'Search for service',
                suffixIcon: Icon(Icons.search_outlined),
                obscureText: true,
                textType: TextInputType.text,
              ),
              SizedBox(
                height: 25.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "All services",
                    style:
                        AppTextStyle().textInAppBar.copyWith(fontSize: 16.sp),
                  )
                ],
              ),
              SizedBox(
                height: 17.sp,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 120.h,
                      child: ListView.builder(
                        itemCount: allServices.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.all(9.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: MyColors.lightGrey
                              //click ? MyColors.lightGrey : MyColors.darkBlue,
                              ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, allServices[index]['rout']);
                              // setState(() {
                              //   //click = !click;
                              // });
                            },
                            child: Container(
                              height: 150.h,
                              width: 90.w,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(allServices[index]['icon'],
                                      size: 27.sp, color: MyColors.darkBlue
                                      //click ? MyColors.darkBlue: MyColors.lightGrey
                                      ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "${allServices[index]['name']}",
                                    style: AppTextStyle().textInAppBar.copyWith(
                                        color: MyColors.darkBlue,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500
                                        //click ? MyColors.darkBlue : MyColors.lightGrey
                                        ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top doctors",
                      style: AppTextStyle()
                          .textInAppBar
                          .copyWith(fontSize: 16.sp)),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, 'DoctorListForPatientScreen');
                    },
                    child: Text("See all", style: AppTextStyle().greyText),
                  )
                ],
              ),
              SizedBox(
                height: 17.sp,
              ),
              // const Column(
              //   children: [
              //     DoctorWidgetForPatientScreen(),
              //     SizedBox(height: 18),
              //     DoctorWidgetForPatientScreen(),
              //   ],
              // )
              Column(
                children: [
                  widget2(),
                  SizedBox(height: 18),
                  widget2(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class widget2 extends StatelessWidget {
  const widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18.sp),
      child: Container(
        padding:
        EdgeInsets.symmetric(horizontal: 10.sp,vertical: 20.sp),
        decoration: BoxDecoration(
          color: MyColors.lightGrey,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: const [
            BoxShadow(
              color: MyColors.grey,
              blurRadius: 5,
              offset: Offset(1, 1), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/doctor.png"),
                SizedBox(
                  width: 10.sp,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "name",
                            style: AppTextStyle().textInAppBar.copyWith(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Text("rate",
                                style: AppTextStyle().textInAppBar.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                ),),
                              const Icon(
                                Icons.star,
                                color: MyColors.yellow,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Text(
                          "qualification",
                          style:AppTextStyle().greyText.copyWith(fontSize: 12.sp,height: 1.h)
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'PatientAppointmentInDoctor');
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 20.sp,
                            right: 25.sp,
                            top: 7.sp,
                            bottom: 7.sp,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.r),
                            border: Border.all(color: MyColors.darkBlue),
                          ),
                          child: const Text(
                            "Book now",
                            style: TextStyle(color: MyColors.darkBlue),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
