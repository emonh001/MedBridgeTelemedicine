import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../view_models/parent_viewmodel.dart';
import '../availability_time_set_screen.dart';
import '../doctor_profile_screen.dart';
import '../doctor_search_screen.dart';
import '../home_screen.dart';


class UserParentScreen extends StatefulWidget {
  const UserParentScreen({super.key});

  @override
  State<UserParentScreen> createState() => _UserParentScreenState();
}

class _UserParentScreenState extends State<UserParentScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ParentScreenProvider>().changeIndex(0);
    });
  }

  void _handleNavChange(int index) {
    context.read<ParentScreenProvider>().changeIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ParentScreenProvider>(
      builder: (__, navParentProvider, child) {
        final List<Widget> pages = [
          const HomeScreen(),
          const FindExpertiseScreen(),
          const DoctorProfileScreen(),
          const AvailabilityTimeSetScreen(),
          const HomeScreen(),
        ];

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    switchInCurve: Curves.easeInOutCubic,
                    switchOutCurve: Curves.easeInOutCubic,
                    transitionBuilder: (Widget child, Animation<double> animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0.3, 0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        ),
                      );
                    },
                    child: IndexedStack(
                      key: ValueKey(navParentProvider.selectedIndex),
                      index: navParentProvider.selectedIndex,
                      children: pages,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(12.w),
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.shade200.withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildNavItem(
                        index: 0,
                        label: "Home",
                        icon: 'assets/icons/home_nav_icon.png',
                        isSelected: navParentProvider.selectedIndex == 0,
                      ),
                      _buildNavItem(
                        index: 1,
                        label: "Doctors",
                        icon: 'assets/icons/doctors_search_nav_icon.png',
                        isSelected: navParentProvider.selectedIndex == 1,
                      ),
                      _buildNavItem(
                        index: 2,
                        label: "Bookings",
                        icon: 'assets/icons/bookings_nav_icon.png',
                        isSelected: navParentProvider.selectedIndex == 2,
                      ),
                      _buildNavItem(
                        index: 3,
                        label: "Chat",
                        icon: 'assets/icons/chat_nav_icon.png',
                        isSelected: navParentProvider.selectedIndex == 3,
                      ),
                      _buildNavItem(
                        index: 4,
                        label: "Profile",
                        icon: 'assets/icons/profile_nav_icon.png',
                        isSelected: navParentProvider.selectedIndex == 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem({
    required int index,
    required String label,
    required String icon,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () => _handleNavChange(index),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade50 : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.elasticOut,
              transform: Matrix4.translationValues(0, isSelected ? -25 : 0, 0),
              child: Container(
                padding: EdgeInsets.all(isSelected ? 10.w : 6.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? Colors.blue.shade100.withOpacity(0.8) : Colors.transparent,
                  boxShadow: isSelected ? [
                    const BoxShadow(
                      color: Colors.blueAccent,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ] : null,
                ),
                child: AnimatedScale(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.elasticOut,
                  scale: isSelected ? 1.3 : 1.0,
                  child: Image.asset(
                    icon,
                    width: 22.w,
                    height: 22.w,
                    color: isSelected ? Colors.blue.shade700 : Colors.grey,
                  ),
                ),
              ),
            ),

            SizedBox(height: isSelected ? 10.h : 4.h),

            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              style: TextStyle(
                fontSize: isSelected ? 12.sp : 11.sp,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                color: isSelected ? Colors.blue.shade700 : Colors.grey,
              ),
              child: Text(label),
            ),

            if (isSelected)
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutBack,
                margin: EdgeInsets.only(top: 4.h),
                height: 3.h,
                width: 20.w,
                decoration: BoxDecoration(
                  color: Colors.blue.shade700,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              )
            else
              SizedBox(height: 4.h),
          ],
        ),
      ),
    );
  }
}