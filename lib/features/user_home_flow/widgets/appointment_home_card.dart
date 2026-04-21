import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentCard extends StatelessWidget {
  final String doctorName;
  final String specialization;
  final String imagePath;
  final String date;
  final String time;
  final String status;

  const AppointmentCard({
    super.key,
    required this.doctorName,
    required this.specialization,
    required this.imagePath,
    required this.date,
    required this.time,
    this.status = "CONFIRMED",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff0057C1),
            Color(0xff2570E5),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(25.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                  radius: 30.r,
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName,
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        specialization,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            Container(
              width: 95.w,
              height: 28.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xff91F78E),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                status,
                style: TextStyle(
                  color: const Color(0xff00731E),
                  fontWeight: FontWeight.w600,
                  fontSize: 11.sp,
                ),
              ),
            ),

            SizedBox(height: 15.h),

            Container(
              width: double.infinity,
              height: 45.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    const Text(
                      '|',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 8.w),
                    const Icon(
                      Icons.timer_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}