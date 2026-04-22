import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: CircleAvatar(
          backgroundImage:
          const AssetImage('assets/images/user_profile.png'),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'Plus Jakarta Sans',
              color: const Color(0xff414754),
            ),
          ),
          Text(
            'MedBridge',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Plus Jakarta Sans',
              color: const Color(0xff1E40AF),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Container(
            height: 50.h,
            width: 50.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF8FAFC),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Image(
                image: const AssetImage(
                    'assets/icons/notification_icon.png'),
                width: 10.w,
                height: 10.h,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}