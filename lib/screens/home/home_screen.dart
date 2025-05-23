import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';
import 'package:ticket_app/base/utils/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SizedBox(height: 40,),
          Container(
            //color: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: AppStyles.headLineStyle3,),
                      SizedBox(height: 5,),
                      Text("Book Tickets", style: AppStyles.headLineStyle1,),
                    ],
                  ),
                  // little box top right
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(AppMedia.logo)
                      )
                    ),
                  )
                ], 
              ),
              SizedBox(height: 25),
              // search area
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6FD),
                      
                    ),
                  
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                    ),
                    Text("Search "),
                  ],
                ) 
              ),
              SizedBox(height: 40,),
              AppDoubleText(
                bigText: "Upcoming Flights", 
                smallText: "View all",
                func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: 
                    ticketList.take(2).map((singleTicket) => 
                         TicketView(ticket: singleTicket)).toList(),
                  
                )
              ),
              SizedBox(height: 40,),
              AppDoubleText(
                bigText: "Hotels", 
                smallText: "View all",
                func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
              ), 
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: hotelList.take(2).map((singleHotel) => 
                         Hotel(hotel: singleHotel)).toList(),
                ),
              )
            ],
            ),
          ),
          
        ],
      ),
    );
  }
}