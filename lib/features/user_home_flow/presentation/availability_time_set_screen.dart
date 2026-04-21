import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/home_appbar.dart';
import '../widgets/selected_date.dart';
import '../widgets/selected_time.dart';

class AvailabilityTimeSetScreen extends StatefulWidget {
  const AvailabilityTimeSetScreen({super.key});

  @override
  State<AvailabilityTimeSetScreen> createState() =>
      _AvailabilityTimeSetScreenState();
}

class _AvailabilityTimeSetScreenState extends State<AvailabilityTimeSetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(15.sp),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15.sp,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(25.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15.r),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/doctor_image.png'),
                                width: 80.w,
                                height: 80.h,
                              )),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 95.w,
                                  height: 28.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff91F78E),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Text(
                                    'Available',
                                    style: TextStyle(
                                      color: Colors.green.shade700,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Dr. Sarah Jenkins',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Cardiology Specialist • 12 years exp.',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SelectDateWidget(),
              TimeSelectionCard(
                times: ["9:00", "9:30", "10:00", "10:30", "11:00", "11:30"],
                headerIcon: Icons.wb_sunny_outlined,
                headerTitle: "Morning Slot",
                onTimeSelected: (index) {
                  print("Selected morning time");
                },
              ),
              TimeSelectionCard(
                times: ["14:00", "14:30", "15:00", "15:30", "16:00", "16:30"],
                headerIcon: Icons.brightness_medium_outlined,
                headerTitle: "Afternoon Slot",
                onTimeSelected: (index) {
                  print("Selected afternoon time");
                },
              ),
              TimeSelectionCard(
                times: ["17:00", "17:30", "18:00", "18:30", "19:00", "19:30"],
                headerIcon: Icons.nights_stay_outlined,
                headerTitle: "Evening Slot",
                onTimeSelected: (index) {
                  print("Selected evening time");
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SELECTED SLOT',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: Color(0xff414754)),
                  ),
                  Text(
                    'CONSULTATION FEE',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: Color(0xff414754)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tue, 13 Oct • 10:30 AM',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: Color(0xff191C1E)),
                  ),
                  Text(
                    '\$95.00',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18.sp,
                        color: Color(0xff0057C1)),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0057C1),
                  fixedSize: const Size(800, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Continue to Booking',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}