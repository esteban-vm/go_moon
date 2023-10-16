// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_drop_down_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    List<String> items = ["James Webb Station", "Another Station"];

    return Scaffold(
      body: SafeArea(
          child: Container(
        height: deviceHeight,
        width: deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TITLE
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "#GoMoon",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),

                // DROP DOWN
                Container(
                  height: deviceHeight * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Destination drop down
                      CustomDropDownButton(values: items, width: deviceWidth),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomDropDownButton(
                              values: const ["1", "2", "3", "4"],
                              width: deviceWidth * 0.45),
                          CustomDropDownButton(values: const [
                            "Economy",
                            "Business",
                            "First",
                            "Private"
                          ], width: deviceWidth * 0.40)
                        ],
                      ),

                      // BUTTON
                      Container(
                        margin: EdgeInsets.only(bottom: deviceHeight * 0.01),
                        width: deviceWidth,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            "Book Ride",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: deviceHeight * 0.5,
                width: deviceWidth * 0.65,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/astro_moon.png"),
                        fit: BoxFit.fill)),
              ),
            )
          ],
        ),
      )),
    );
  }
}
