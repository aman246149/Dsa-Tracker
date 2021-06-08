// @dart=2.9

import 'package:api_fetch/ResponsiveLayout/HomeScreen/DesktopResponsiveHome.dart';
import 'package:api_fetch/ResponsiveLayout/HomeScreen/MobileResponsiveHome.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Color(0XFF292636),
      //   title: Center(
      //     child: Text(
      //       "DSA TRACKER",
      //       style: TextStyle(
      //         fontSize: 35,
      //         fontFamily: 'Mate SC',
      //         color: Color(0XFFff9580),
      //       ),
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 30),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "😍  😇",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Mate SC',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0.0),
                      child: Icon(
                        Icons.bookmark_add_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                AutoSizeText(
                  "Hello Coder",
                  minFontSize: 60,
                  presetFontSizes: [60, 20, 18],
                  style: TextStyle(
                      color: Color(0XFF50fa7b),
                      fontWeight: FontWeight.w800,
                      fontFamily: 'ZCOOL KuaiLe'),
                ),
                SizedBox(
                  height: 14,
                ),
                AutoSizeText(
                  "Great day for a new",
                  minFontSize: 40,
                  presetFontSizes: [40, 20, 18],
                  style: TextStyle(
                      color: Color(0XFFdcfd83),
                      fontSize: 30,
                      fontFamily: 'Mate SC',
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 2,
                ),
                AutoSizeText(
                  "challenge",
                  minFontSize: 40,
                  presetFontSizes: [40, 20, 18],
                  style: TextStyle(
                      color: Color(0XFFdcfd83),
                      fontSize: 30,
                      fontFamily: 'Mate SC',
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child:
                      ResponsiveBuilder(builder: (context, sizingInformation) {
                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.desktop)
                      return DesktopResponsiveHome();
                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile) {
                      return MobileResponsiveHome();
                    } else if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.tablet) {
                      return DesktopResponsiveHome();
                    } else {
                      return MobileResponsiveHome();
                    }
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
