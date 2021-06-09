// @dart=2.9

import 'dart:io';

import 'package:api_fetch/Components/Card.dart';
import 'package:api_fetch/Components/PieChart.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/ArrayScreen.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Matrix.dart';
import 'package:api_fetch/model/aman.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../data.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class LoveBabbar extends StatefulWidget {
  @override
  _LoveBabbarState createState() => _LoveBabbarState();
}

class _LoveBabbarState extends State<LoveBabbar> {
  // List listaman = [];
  // List listIsChedked = [];

  // Box box;
  // Box Checkbox;

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   Hive.close();
  // }

  // addToDatabase() {
  //   // box = Hive.box('testbox1');
  //   var isChecked = List.filled(array.length, false);

  //   box.put(12, array);
  //   box.put(13, isChecked);
  //   getDataFromDataBase();
  // }

  // void getDataFromDataBase() async {
  //   var another = await box.get(12);

  //   // print(another);
  //   updatedatabase();

  //   setState(() {
  //     listaman = box.get(12);
  //     listIsChedked = box.get(13);
  //   });
  // }

  // void updatedatabase() {
  //   // var value = array[0]['undefined'] = "done";
  //   // array[0]=value;
  //   // box.put(12, value);

  //   var newISCheckedList = box.get(13);
  //   newISCheckedList[0] = false;
  //   var newArrayList = box.get(12);
  //   newArrayList[0]['undefined'] = "true";
  //   box.put(12, newArrayList);
  //   box.put(13, newISCheckedList);
  // }

  // Future openBox() async {
  //   Directory directory = await pathProvider.getApplicationDocumentsDirectory();

  //   if (directory != null) {
  //   } else {
  //     Hive.init(directory.path);
  //   }

  //   // Hive.registerAdapter(AmanAdapter());

  //   box = await Hive.openBox("testbox1");
  //   Checkbox = await Hive.openBox("checkbox");
  //   addToDatabase();
  //   getDataFromDataBase();

  //   return;
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // print(listaman);
  //   openBox();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: listaman.length == 0
        //     ? Text("Loading")
        //     : ListView.builder(
        //         itemCount: listaman.length,
        //         itemBuilder: (context, index) {
        //           return ListTile(
        //             title: Text(
        //               listaman[index]['undefined'].toString(),
        //               style: TextStyle(color: Colors.white, fontSize: 30),
        //             ),
        //             trailing: Text(
        //               listIsChedked[index].toString(),
        //               style: TextStyle(color: Colors.white),
        //             ),
        //           );
        //         },
        //       ),
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
                      onTap: (){
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
