import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  const HotelView({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      // height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(15),
        vertical: AppLayout.getHeight(17),
      ),
      margin: EdgeInsets.only(
        right: AppLayout.getWidth(17),
        top: AppLayout.getHeight(5),
      ),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: AppStyles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: AppStyles.headlineStyle2.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: AppStyles.headlineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(5),
          Text(
            '\$${hotel['price']}/night',
            style: AppStyles.headlineStyle1.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
