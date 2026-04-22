import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/constants/assets_paths.dart';

class CommonListTile extends StatelessWidget {
  const CommonListTile({
    super.key,
    required this.textTheme,
    required this.title,
    required this.icon,
    required this.iconBgColor,
    required this.onTap
  });

  final TextTheme textTheme;
  final String title;
  final Icon icon;
  final Color iconBgColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: iconBgColor,
          borderRadius: .circular(10),
        ),
        child: icon,
      ),
      title: Text(
        title,
        style: textTheme.titleLarge!.copyWith(fontSize: 24),
      ),
      trailing: SvgPicture.asset(AssetsPaths.arrowForward, height: 20),
      onTap: onTap,
    );
  }
}
