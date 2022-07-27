import 'package:book_tickets/utils/app_layout.dart';
import 'package:book_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/app_icon_text.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: AppStyles.headlineStyle1.copyWith(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(5)),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6FD),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              ),
              child: Row(
                children: [
                  /**
                   * Airline Tickets
                   */
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(10),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                          AppLayout.getWidth(50),
                        ),
                      ),
                    ),
                    child: const Center(
                      child: Text('Airlines Tickets'),
                    ),
                  ),

                  /**
                   * Hotels
                   */
                  Container(
                    width: size.width * 0.44,
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(10),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(
                          AppLayout.getWidth(50),
                        ),
                      ),
                    ),
                    child: const Center(
                      child: Text('Hotels'),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Gap(AppLayout.getHeight(20)),

          //
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),

          Gap(AppLayout.getHeight(15)),

          //
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),

          Gap(AppLayout.getHeight(25)),

          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(18),
              horizontal: AppLayout.getWidth(15),
            ),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(10),
              ),
            ),
            child: Center(
              child: Text(
                'find tickets',
                style: AppStyles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Gap(AppLayout.getHeight(40)),
          const DoubleTextWidget(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            children: [
              Container(
                // height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(15),
                ),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(20),
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/sit.jpg'),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance.",
                      style: AppStyles.headlineStyle2,
                    ),
                  ],
                ),
              ),

              Gap(AppLayout.getWidth(10)),
              //
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15),
                          vertical: AppLayout.getHeight(15),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getWidth(18),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: AppStyles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: AppStyles.headlineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                              width: 18,
                              color: const Color(0xFF189999),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Gap(AppLayout.getHeight(15)),

                  //
                  Container(
                    width: size.width * 0.44,
                    height: 200,
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(
                        AppLayout.getWidth(18),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take Love",
                          style: AppStyles.headlineStyle2.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Gap(AppLayout.getHeight(15)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
