import 'package:api_fetch/Components/Card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blueAccent.shade100, Color(0XFFf2d2fc)])),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 30),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "😍  😇",
                        style: TextStyle(fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Icon(
                          Icons.bookmark_add_rounded,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Hello Coder",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'ZCOOLKuaiLe'),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Great day for a new",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "challenge",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: GridView.count(
                      // shrinkWrap: true,
                      // crossAxisSpacing: 3,
                      crossAxisCount: 2,
                      children: [
                        CardCollection(
                          sheetname: 'Love Babbar Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                        CardCollection(
                          sheetname: 'Prepcoading Sheet',
                          goals: '0',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
