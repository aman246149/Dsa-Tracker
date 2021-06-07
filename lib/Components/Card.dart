import 'package:flutter/material.dart';


class CardCollection extends StatelessWidget {
  final String sheetname;
  final String goals;

  const CardCollection({Key? key, required this.sheetname, required this.goals})
      : super(key: key);

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
      color: Theme.of(context).accentColor,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: 200,
          minHeight: 199,
        ),
        width: MediaQuery.of(context).size.width / 2.3,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sheetname,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("${day} ${monthInString}",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Goals",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text("${goals}/ 450",
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
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
