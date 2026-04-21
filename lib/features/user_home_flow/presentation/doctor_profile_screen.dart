import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/home_appbar.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25.w),
            child: Column(spacing: 15.sp,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: SizedBox(
                          width: double.infinity,
                          height: 350.h,
                          child: Image.network(
                            'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30.h,
                      right: 25.w,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            spacing: 5,
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/icons/available_icon.png'),
                                width: 15.w,
                                height: 15.h,
                              ),
                              Text(
                                'Available',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF00731E),
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Sarah Mitchell',
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF1A2C3A),
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            'Specializing in preventive cardiology and non-invasive cardiovascular imaging with over 12 years of clinical experience.',
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: const Color(0xFF6B7A8A),
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Container(
                    width: 200.w,
                    height: 46.h,
                    decoration: BoxDecoration(
                      color: Color(0xff004397),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      spacing: 15,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Book Appointment',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                          size: 15.sp,
                        )
                      ],
                    )),

                Container(
                    width: 150.w,
                    height: 46.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6E8EA),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      spacing: 15,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Message',
                          style: TextStyle(
                            color: Color(0xff004397),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image(
                          image: AssetImage('assets/icons/message_icon.png'),
                          width: 15.w,
                          height: 15.h,
                        )
                      ],
                    )),

                Column(spacing: 15,
                  children: [
                    Row(spacing: 15,
                      children: [
                        Container(
                          width: 150.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('1.2K+',style: TextStyle(color: Color(0xff0057C1),fontSize: 24,fontWeight: FontWeight.w800),),
                              Text('PATIENTS',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                        Container(
                          width: 150.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('1.2K+',style: TextStyle(color: Color(0xff0057C1),fontSize: 24,fontWeight: FontWeight.w800),),
                              Text('EXPERIENCE',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(spacing: 15,
                      children: [
                        Container(
                          width: 150.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('1.2K+',style: TextStyle(color: Color(0xff0057C1),fontSize: 24,fontWeight: FontWeight.w800),),
                              Text('RATING',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                        Container(
                          width: 150.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('1.2K+',style: TextStyle(color: Color(0xff0057C1),fontSize: 24,fontWeight: FontWeight.w800),),
                              Text('SUCCESS',style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),


                Text(
                  'Clinical Experience',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1A2C3A),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.08),
                        blurRadius: 10.r,
                        offset: Offset(0, 2.h),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.w),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Color(0xFFEEEEEE)),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Senior Cardiology',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF1A2C3A),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  'Member, Heart Institute at UCB',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: const Color(0xFF6B7A8A),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Present',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xFF9AA6B5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cardiology Residency',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF1A2C3A),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  'City, Open-split program at UCB',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: const Color(0xFF6B7A8A),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '2008',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color(0xFF9AA6B5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Patient Reviews',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1A2C3A),
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF1B5E8A),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFD),
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(30.r),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/user_profile.png'),
                                width: 50.w,
                                height: 50.h,
                              )),
                          SizedBox(width: 12.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'James Wilson',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF1A2C3A),
                                ),
                              ),
                              Text(
                                'Patient',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xFF9AA6B5),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        '"Dr. Mitchell is incredibly thorough and took the time to explain everything clearly. She has a great bedside manner and made me feel comfortable throughout."',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFF4A5A6E),
                          height: 1.45,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            size: 16.sp,
                            color: const Color(0xFFFFB74D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  'Education',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1A2C3A),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.08),
                        blurRadius: 10.r,
                        offset: Offset(0, 2.h),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.w),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Color(0xFFEEEEEE)),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.school_outlined,
                              size: 22.sp,
                              color: const Color(0xFF2C5F8A),
                            ),
                            SizedBox(width: 14.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ME/In Cardiology',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF1A2C3A),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  'Specialized in Adult Cardiology',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: const Color(0xFF6B7A8A),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.w),
                        child: Row(
                          children: [
                            Icon(
                              Icons.school_outlined,
                              size: 22.sp,
                              color: const Color(0xFF2C5F8A),
                            ),
                            SizedBox(width: 14.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fellowship/integrating',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF1A2C3A),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  'Cardiologist, University Hospital',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: const Color(0xFF6B7A8A),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Specializations',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1A2C3A),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F4F8),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                size: 18.sp,
                                color: const Color(0xFF2C5F8A),
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                'Heart Failure',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF1A2C3A),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F4F8),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.medical_services_outlined,
                                size: 18.sp,
                                color: const Color(0xFF2C5F8A),
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                'Elective Surgery',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF1A2C3A),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFD),
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 22.sp,
                        color: const Color(0xFF2C5F8A),
                      ),
                      SizedBox(width: 14.w),
                      Expanded(
                        child: Text(
                          '1st Healthplex Ave, Suite 101, Mountain Breeze, 6th',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFF4A5A6E),
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
