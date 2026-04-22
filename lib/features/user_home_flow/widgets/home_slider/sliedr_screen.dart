import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../app/routes/route_names.dart';
import '../../../../app/routes/route_paths.dart';

class DoctorCarousel extends StatelessWidget {
  DoctorCarousel({super.key});

  final List<Map<String, String>> doctors = [
    {
      "name": "Dr. Marcus Rodriguez",
      "specialty": "Internal Medicine",
      "image": "assets/images/doctor_image.png",
    },
    {
      "name": "Dr. Sarah Ahmed",
      "specialty": "Cardiologist",
      "image": "assets/images/doctor_image.png",
    },
    {
      "name": "Dr. John Smith",
      "specialty": "Neurologist",
      "image": "assets/images/doctor_image.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 220.h,
        enlargeCenterPage: true,
        autoPlay: true,
        viewportFraction: 0.85,
      ),
      items: doctors.map((doc) {
        return Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                context.push(RouteNames.doctorProfileScreen);
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.r),
                            child: Image.asset(
                              doc["image"]!,
                              width: 50.w,
                              height: 50.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                doc["name"]!,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Plus Jakarta Sans',
                                ),
                              ),
                              Text(
                                doc["specialty"]!,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Color(0xffFACC15)),
                          SizedBox(width: 5.w),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "(124 reviews)",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Available Today",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff006E1C),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.w, vertical: 6.h),
                              decoration: BoxDecoration(
                                color: const Color(0xffD8E2FF),
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  context.push(RouteNames.availabilityTimeSet);
                                },
                                child: Text(
                                  "Book",
                                  style: TextStyle(
                                    color: const Color(0xff004397),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
