import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  const AppIconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(12),
        horizontal: AppLayout.getWidth(12),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(10),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2D5),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: AppStyles.textStyle,
          ),
        ],
      ),
    );
  }
}
