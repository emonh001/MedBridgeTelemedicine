import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../app/routes/route_names.dart';
import '../widgets/appointment_home_card.dart';
import '../widgets/categories_list.dart';
import '../widgets/home_appbar.dart';
import '../widgets/home_slider/sliedr_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade50,
      appBar: HomeAppbar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10.sp,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search for Dct's or Symptoms",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 1.2,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Appointment',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xff191C1E)),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xff0057C1)),
                  ),
                ],
              ),
              AppointmentCard(
                doctorName: "Dr. Marcus Rodriguez",
                specialization: "Cardiologist • Heart Clinic",
                imagePath: "assets/images/doctor_image.png",
                date: "Tue, Oct 24",
                time: "10:30 AM - 11:00 AM",
              ),
              Text(
                'Categories',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Plus Jakarta Sans',
                    color: Color(0xff191C1E)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryIconButton(
                    iconPath: 'assets/icons/general_home_icon.png',
                    bgColor: const Color(0xffF8FAFC),
                    onTap: () {},
                  ),
                  CategoryIconButton(
                    iconPath: 'assets/icons/cardiology_home_icon.png',
                    bgColor: const Color(0xffFEF2F2),
                    onTap: () {},
                  ),
                  CategoryIconButton(
                    iconPath: 'assets/icons/dental_home_icon.png',
                    bgColor: const Color(0xffFFF7ED),
                    onTap: () {},
                  ),
                  CategoryIconButton(
                    iconPath: 'assets/icons/eye_home_icon.png',
                    bgColor: const Color(0xffF0FDF4),
                    onTap: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Doctors',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xff191C1E)),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(RouteNames.findExpertise);
                    },
                    child:  Text(
                      'View all',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xff0057C1)),
                    ),
                  )
                ],
              ),
              DoctorCarousel(),
            ],
          ),
        )
      )),
    );
  }
}