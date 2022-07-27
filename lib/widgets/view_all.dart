import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Upcoming Flights',
          style: AppStyles.headlineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'View all',
            style: AppStyles.textStyle.copyWith(
              color: AppStyles.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
