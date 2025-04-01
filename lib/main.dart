import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

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
      home: BottomNavBar(

      )
    );  
  }
}
