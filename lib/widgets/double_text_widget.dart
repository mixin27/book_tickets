import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  const DoubleTextWidget({
    Key? key,
    required this.bigText,
    required this.smallText,
    this.onTap,
  }) : super(key: key);

  final String bigText;
  final String smallText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headlineStyle2,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
