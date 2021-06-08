// @dart=2.9

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CardCollection extends StatelessWidget {
  final String sheetname;
  final String goals;
  final String target;

  const CardCollection({this.sheetname, this.goals, this.target});

  @override
  Widget build(BuildContext context) {
    var date = new DateTime.now();
    var day = DateTime.parse(date.toString()).day;
    var monthInNumber = DateTime.parse(date.toString()).month;
    var monthInString;

    switch (monthInNumber) {
      case 1:
        monthInString = "january";
        break;
      case 2:
        monthInString = "Feb";
        break;
      case 3:
        monthInString = "Mar";
        break;
      case 4:
        monthInString = "April";
        break;
      case 5:
        monthInString = "May";
        break;
      case 6:
        monthInString = "June";
        break;
      case 7:
        monthInString = "July";
        break;
      case 8:
        monthInString = "August";
        break;
      case 9:
        monthInString = "Sepetember";
        break;
      case 10:
        monthInString = "October";
        break;
      case 11:
        monthInString = "November";
        break;
      default:
        monthInString = "December";
    }

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      color: Color(0XFF16151e),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.3,
        // height: 500,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    sheetname,
                    minFontSize: 18,
                    presetFontSizes: [22, 20, 18],
                    style: TextStyle(
                      color: Color(0XFFff9580),
                      fontFamily: 'Mate SC',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    "$day $monthInString",
                    minFontSize: 18,
                    presetFontSizes: [18, 20, 18],
                    style: TextStyle(
                      fontFamily: 'Mate SC',
                      color: Color(0XFFff80bf),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          "Goals",
                          minFontSize: 18,
                          presetFontSizes: [20, 20, 18],
                          style: TextStyle(
                            fontFamily: 'Mate SC',
                            color: Color(0XFFffff80),
                          ),
                        ),
                        AutoSizeText("$goals/ $target",
                            minFontSize: 18,
                            presetFontSizes: [18, 18, 16],
                            style: TextStyle(
                              fontFamily: 'Mate SC',
                              color: Color(0XFFffff80),
                            ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
