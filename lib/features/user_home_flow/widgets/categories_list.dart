import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryIconButton extends StatelessWidget {
  final String iconPath;
  final Color bgColor;
  final VoidCallback onTap;
  final double padding;

  const CategoryIconButton({
    super.key,
    required this.iconPath,
    required this.bgColor,
    required this.onTap,
    this.padding = 25,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Container(
        height: 68.h,
        width: 68.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(padding.sp),
          child: Image.asset(
            iconPath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}