// @dart=2.9

import 'package:api_fetch/Components/Card.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/ArrayScreen.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Matrix.dart';
import 'package:flutter/material.dart';

class LoveBabbar extends StatefulWidget {
  @override
  _LoveBabbarState createState() => _LoveBabbarState();
}

class _LoveBabbarState extends State<LoveBabbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 20, right: 25),
        child: Column(
          children: [
            Center(
              child: Text(
                "Progress",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: 'Mate SC',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 5),
              ),
            ),
            // PieChartSample2(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 10, right: 10),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ArrayScreen(),
                            ));
                      },
                      child: CardCollection(
                        sheetname: 'array',
                        goals: '500',
                        target: '400',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Matrix(),
                            ));
                      },
                      child: CardCollection(
                        sheetname: 'Matrix',
                        goals: '500',
                        target: '400',
                      ),
                    ),
                    CardCollection(
                      sheetname: 'String',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'Searching and Sorting',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'LinkedList',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'BinaryTress',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'BinarySearchTress',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'Greedy',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'BackTracking',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'StackAndQueues',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'Heap',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'Graph',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'Trie',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'DynamicProgramming',
                      goals: '500',
                      target: '400',
                    ),
                    CardCollection(
                      sheetname: 'BitManipulation',
                      goals: '500',
                      target: '400',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
