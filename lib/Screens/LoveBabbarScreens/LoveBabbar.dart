// @dart=2.9

import 'dart:io';

import 'package:api_fetch/Components/Card.dart';
import 'package:api_fetch/Components/PieChart.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/ArrayScreen.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Matrix.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/SearchingAndSort.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Strings.dart';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class LoveBabbar extends StatefulWidget {
  @override
  _LoveBabbarState createState() => _LoveBabbarState();
}

class _LoveBabbarState extends State<LoveBabbar> {
  Box lengthBox;
  List arraylength = [0, 0];
  List matrixlength = [0, 0];
  List stringlength = [0, 0];

  openBox() async {
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();

    if (directory != null) {
    } else {
      Hive.init(directory.path);
    }

    lengthBox = await Hive.openBox("lengthBox");

    var forArrayStateupdatevariable = await lengthBox.get(101);
    var forMatrixStateupdatevariable = await lengthBox.get(102);
    var forStringStateupdatevariable = await lengthBox.get(103);

    if (forArrayStateupdatevariable == null) {
      setState(() {
        arraylength = [1, 1];
      });
    } else {
      setState(() {
        arraylength = forArrayStateupdatevariable;
      });
    }

    if (forMatrixStateupdatevariable == null) {
      setState(() {
        matrixlength = [1, 1];
      });
    } else {
      setState(() {
        matrixlength = forMatrixStateupdatevariable;
      });
    }

    if (forStringStateupdatevariable == null) {
      setState(() {
        stringlength = [1, 1];
      });
    } else {
      setState(() {
        stringlength = forStringStateupdatevariable;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      openBox();
    });
    print("callded");
  }

  @override
  void dispose() {
    super.dispose();
    lengthBox.close();
  }

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
            PieChartSample2(
              arrayLength: arraylength[0],
              matrixlength: matrixlength[0],
              stringlength: stringlength[0],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 10, right: 10),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArrayScreen(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'array',
                        goals: arraylength[0].toString(),
                        target: arraylength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Matrix(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'Matrix',
                        goals: matrixlength[0].toString(),
                        target: matrixlength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StringsQue(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'String',
                        goals: stringlength[0].toString(),
                        target: stringlength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchAndSort(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'Searching and Sorting',
                        goals: '500',
                        target: '400',
                      ),
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
      )),
    );
  }
}
