import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListScreen extends StatelessWidget {
  DoctorListScreen({super.key});

  final List<Map<String, dynamic>> doctors = List.generate(6, (index) {
    return {
      "name": "Dr. Marcus Thorne $index",
      "speciality": "Senior Cardiologist",
      "rating": "4.9",
      "exp": "12 yrs exp.",
      "distance": "2.4 km away",
      "image":
      "https://images.unsplash.com/photo-1607746882042-944635dfe10e",
    };
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.all(0),
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        final doctor = doctors[index];

        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    doctor["image"],
                    height: 180.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 12.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor["name"],
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          doctor["speciality"],
                          style: TextStyle(
                            color: const Color(0xff0057C1),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.star,
                              color: Color(0xff006E1C), size: 16),
                          SizedBox(width: 4.w),
                          Text(
                            doctor["rating"],
                            style: const TextStyle(
                              color: Color(0xff006E1C),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                Row(
                  children: [
                    const Icon(Icons.work,
                        size: 16, color: Colors.grey),
                    SizedBox(width: 4.w),
                    Text(doctor["exp"]),
                    SizedBox(width: 12.w),
                    const Icon(Icons.location_on,
                        size: 16, color: Colors.grey),
                    SizedBox(width: 4.w),
                    Text(doctor["distance"]),
                  ],
                ),

                SizedBox(height: 12.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.circle,
                            color: Color(0xff006E1C), size: 10),
                        SizedBox(width: 6),
                        Text(
                          "Available Today",
                          style: TextStyle(
                            color: Color(0xff006E1C),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.blueAccent,
                      ),
                      child: const Text(
                        "View Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}