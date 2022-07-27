import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';
import 'view/hotel_view.dart';
import 'view/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const Gap(40),

                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Intro
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: AppStyles.headlineStyle1,
                        ),
                      ],
                    ),

                    // Logo
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/img_1.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const Gap(25),

                // SearchBar
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      const Gap(10),
                      Text(
                        'Search',
                        style: AppStyles.headlineStyle4,
                      ),
                    ],
                  ),
                ),

                const Gap(40),

                // Upcoming Flights
                // Section Header
                const DoubleTextWidget(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                ),
              ],
            ),
          ),

          const Gap(15),

          // Ticket View
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((ticket) => TicketView(ticket: ticket))
                  .toList(),
            ),
          ),
          const Gap(15),
          // Hotel
          // Section Header
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: const DoubleTextWidget(
              bigText: 'Hotels',
              smallText: 'View all',
            ),
          ),

          const Gap(15),

          // Hotel View
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children:
                  hotelList.map((hotel) => HotelView(hotel: hotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
