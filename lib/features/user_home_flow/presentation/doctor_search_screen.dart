import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/doctor_list_card.dart';
import '../widgets/home_appbar.dart';

class FindExpertiseScreen extends StatelessWidget {
  const FindExpertiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),

                Text(
                  "Find Expertise",
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 6.h),

                Text(
                  "Access world-class specialists tailored to your specific care needs.",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey[600],
                  ),
                ),

                SizedBox(height: 16.h),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search doctors, clinics...",
                      icon: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                ),

                SizedBox(height: 16.h),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _chip("Specialty", true),
                      _chip("Rating", false),
                      _chip("Distance", false),
                    ],
                  ),
                ),

                SizedBox(height: 20.h),

Expanded(child: DoctorListScreen())


              ],
            ),
        ),
      ),
    );
  }

  Widget _chip(String label, bool selected) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: selected ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Icon(
              selected ? Icons.tune : Icons.star_border,
              size: 16,
              color: selected ? Colors.white : Colors.black,
            ),
            SizedBox(width: 6.w),
            Text(
              label,
              style: TextStyle(
                color: selected ? Colors.white : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}