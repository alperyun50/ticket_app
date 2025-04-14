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
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  const TicketView({super.key, required this.ticket, this.wholeScreen = false, this.isColor});

  @override
  Widget build(BuildContext context) {
    // Upcoming flight card part
    final size = MediaQuery.of(context).size;
 
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),

        child: Column(
          children: [
            // blue part of tickets
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? AppStyles.ticketBlue : AppStyles.ticketColor,
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
                      TextStyleThird(text: ticket["from"]["code"], isColor: isColor,),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor,),
                      // ticket flying icon
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
                                  color: isColor == null ? Colors.white : AppStyles.planeSecondColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor,),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),

                  SizedBox(height: 3),
                  // show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket["flying_time"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"], 
                          align: TextAlign.end,
                          isColor: isColor,
                        ),
                     ),
                    ],
                  ),
                ],
              ),
            ),
            // circles and dots
            Container(
              height: 20,
              color: isColor == null ? AppStyles.ticketOrange : AppStyles.ticketColor,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                  Expanded(child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                    isColor: isColor,
                  )),
                  //Transform.rotate(angle: 3.14, child: BigCircle(),)
                  BigCircle(
                    isRight: true,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
            // orange part of tickets
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null ? AppStyles.ticketOrange : AppStyles.ticketColor,
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
                        topText: ticket["date"], 
                        bottomText: "DATE",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"], 
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(), 
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
