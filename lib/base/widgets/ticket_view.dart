// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    // Upcoming flight card part
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),

        child: Column(
          children: [
            // blue part of tickets
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // shows departure and destination with icons first line
                  Row(
                    children: [
                      TextStyleThird(text: "NYC"),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                // 1.57 is 90 degree
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: "LDN"),
                    ],
                  ),

                  SizedBox(height: 3),
                  // show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "New-York"),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: "8H 30M"),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "London", align: TextAlign.end,),
                     ),
                    ],
                  ),
                ],
              ),
            ),
            // circles and dots
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false,),
                  Expanded(child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                  )),
                  //Transform.rotate(angle: 3.14, child: BigCircle(),)
                  BigCircle(isRight: true,),
                ],
              ),
            ),
            // orange part of tickets
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // shows departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "1 May", 
                        bottomText: "DATE",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: "08:00 AM", 
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: "23", 
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                      ),
                     ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
