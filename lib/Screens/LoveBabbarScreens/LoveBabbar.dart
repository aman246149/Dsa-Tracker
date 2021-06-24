// @dart=2.9

import 'dart:io';

import 'package:api_fetch/Components/Card.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/ArrayScreen.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/BInarySearchTree.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/BInaryTree.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/BackTracking.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/BitManipu.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Dp.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Graph.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Greedy.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Heap.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Matrix.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/SearchingAndSort.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/StackAndQueue.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Strings.dart';
import 'package:api_fetch/Screens/LoveBabbarScreens/Trie.dart';
import 'LInkedList.dart';

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
  List searchinglength = [0, 0];
  List linkedlength = [0, 0];
  List binarylength = [0, 0];
  List bstlength = [0, 0];
  List greedylength = [0, 0];
  List backtrackinglength = [0, 0];
  List stackandquelength = [0, 0];
  List heaplength = [0, 0];
  List graphlength = [0, 0];
  List trielength = [0, 0];
  List dynammiclength = [0, 0];
  List bitmanilength = [0, 0];

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
    var forSearchingAndSortingupdatevariable = await lengthBox.get(104);
    var forLinkedListupdatevariable = await lengthBox.get(105);
    var forBinaryTreeupdatevariable = await lengthBox.get(106);
    var forBInarySEarchupdatevariable = await lengthBox.get(107);
    var forGreedyStateupdatevariable = await lengthBox.get(108);
    var forBackTrackingStateupdatevariable = await lengthBox.get(109);
    var forStackANdQueuepdatevariable = await lengthBox.get(1010);
    var forHeapupdatevariable = await lengthBox.get(1011);
    var forGraphStateupdatevariable = await lengthBox.get(1012);
    var forTrieStateupdatevariable = await lengthBox.get(1013);
    var forDynammicPrograStateupdatevariable = await lengthBox.get(1014);
    var forBitStateupdatevariable = await lengthBox.get(1015);

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

    if (forSearchingAndSortingupdatevariable == null) {
      setState(() {
        searchinglength = [1, 1];
      });
    } else {
      setState(() {
        searchinglength = forStringStateupdatevariable;
      });
    }

    if (forLinkedListupdatevariable == null) {
      setState(() {
        linkedlength = [1, 1];
      });
    } else {
      setState(() {
        linkedlength = forStringStateupdatevariable;
      });
    }

    if (forBinaryTreeupdatevariable == null) {
      setState(() {
        binarylength = [1, 1];
      });
    } else {
      setState(() {
        binarylength = forStringStateupdatevariable;
      });
    }

    if (forBInarySEarchupdatevariable == null) {
      setState(() {
        bstlength = [1, 1];
      });
    } else {
      setState(() {
        bstlength = forStringStateupdatevariable;
      });
    }

    if (forGreedyStateupdatevariable == null) {
      setState(() {
        greedylength = [1, 1];
      });
    } else {
      setState(() {
        greedylength = forStringStateupdatevariable;
      });
    }

    if (forBackTrackingStateupdatevariable == null) {
      setState(() {
        backtrackinglength = [1, 1];
      });
    } else {
      setState(() {
        backtrackinglength = forStringStateupdatevariable;
      });
    }

    if (forStackANdQueuepdatevariable == null) {
      setState(() {
        stackandquelength = [1, 1];
      });
    } else {
      setState(() {
        stackandquelength = forStringStateupdatevariable;
      });
    }

    if (forHeapupdatevariable == null) {
      setState(() {
        heaplength = [1, 1];
      });
    } else {
      setState(() {
        heaplength = forStringStateupdatevariable;
      });
    }

    if (forGraphStateupdatevariable == null) {
      setState(() {
        graphlength = [1, 1];
      });
    } else {
      setState(() {
        graphlength = forStringStateupdatevariable;
      });
    }

    if (forTrieStateupdatevariable == null) {
      setState(() {
        trielength = [1, 1];
      });
    } else {
      setState(() {
        trielength = forStringStateupdatevariable;
      });
    }

    if (forDynammicPrograStateupdatevariable == null) {
      setState(() {
        dynammiclength = [1, 1];
      });
    } else {
      setState(() {
        dynammiclength = forStringStateupdatevariable;
      });
    }

    if (forBitStateupdatevariable == null) {
      setState(() {
        bitmanilength = [1, 1];
      });
    } else {
      setState(() {
        bitmanilength = forStringStateupdatevariable;
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
                        goals: searchinglength[0].toString(),
                        target: searchinglength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LInkedList(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'LinkedList',
                        goals: linkedlength[0].toString(),
                        target: linkedlength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BInaryTree(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'BinaryTress',
                        goals: binarylength[0].toString(),
                        target: binarylength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BInarySearchTree(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'BinarySearchTress',
                        goals: bstlength[0].toString(),
                        target: bstlength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Greedy(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'Greedy',
                        goals: greedylength[0].toString(),
                        target: greedylength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BackTracking(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'BackTracking',
                        goals: backtrackinglength[0].toString(),
                        target: backtrackinglength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StackAndQueue(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'StackAndQueues',
                        goals: stackandquelength[0].toString(),
                        target: stackandquelength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Heap(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'Heap',
                        goals: heaplength[0].toString(),
                        target: heaplength[0].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Graph(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'Graph',
                        goals: graphlength[0].toString(),
                        target: graphlength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Trie(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'Trie',
                        goals: trielength[0].toString(),
                        target: trielength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dp(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'DynamicProgramming',
                        goals: dynammiclength[0].toString(),
                        target: dynammiclength[1].toString(),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bitmanipulation(),
                          ),
                        );
                        setState(() {
                          openBox();
                        });
                      },
                      child: CardCollection(
                        sheetname: 'BitManipulation',
                        goals: bitmanilength[0].toString(),
                        target: bitmanilength[1].toString(),
                      ),
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
