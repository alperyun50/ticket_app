import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
  // var test = TestClass(x:1, y:2);
  // print(test.x);
}

// class TestClass{
//   int x;
//   int y;

//   TestClass({required this.x, required this.y});

//   TestClass copyWith(int? x, int? y){
//     return TestClass(x:x!, y:y!);
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(    
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      debugShowCheckedModeBanner: false,
      
      routes: {
        AppRoutes.homePage : (context) => BottomNavBar(),
        AppRoutes.allTickets : (context) => AllTickets(),
        AppRoutes.ticketScreen : (context) => TicketScreen(),
        AppRoutes.allHotels: (context) => AllHotels(),
        AppRoutes.hotelDetail: (context) => HotelDetail(),
      },
    );  
  }
}
