// @dart=2.9

import 'dart:io';
import 'package:api_fetch/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ArrayScreen extends StatefulWidget {
  @override
  _ArrayScreenState createState() => _ArrayScreenState();
}

class _ArrayScreenState extends State<ArrayScreen> {
  Box box;
  List arraylist = [];
  var isChecked = false;

  addToDatabase() async {
    try {
      if (await box.get(1).length == null) {
        box.put(1, array);
      } else if (await box.get(1).length > 0) {
        return;
      }
    } catch (error) {
      box.put(1, array);
    }
  }

  void getDataFromDataBase() async {
    setState(() {
      arraylist = box.get(1);
    });
  }

  updateDataInDataBase(int index, bool value) async {
    var newArrayList = box.get(1);
    newArrayList[index]['undefined'] = value;
    print(newArrayList);
    await box.put(1, newArrayList);
    setState(() {
      arraylist = newArrayList;
    });
  }

  Future openBox() async {
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();

    if (directory != null) {
    } else {
      Hive.init(directory.path);
    }

    box = await Hive.openBox("arrayBox");
    addToDatabase();
    getDataFromDataBase();

    return;
  }

  @override
  void initState() {
    super.initState();
    openBox();
  }

  @override
  void dispose() {
    super.dispose();
    box.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: arraylist.length,
        itemBuilder: (context, index) {
          return buildListTile(index);
        },
      ),
    );
  }

  ListTile buildListTile(int index) {
    return ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right:
                        new BorderSide(width: 1.0, color: Colors.white24))),
            child:
                Icon(CupertinoIcons.arrow_2_squarepath, color: Colors.white),
          ),
          title: Text(
            arraylist[index]['arrayquestion:'].toString(),
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              Icon(Icons.linear_scale, color: Colors.yellowAccent),
              Text(" Intermediate", style: TextStyle(color: Colors.white))
            ],
          ),
          trailing: Checkbox(
            onChanged: (value) {
              setState(() {
                arraylist[index]['undefined'] = value;
                // isChecked = value;
                updateDataInDataBase(index, value);
              });
            },
            value: arraylist[index]['undefined'],
            fillColor: MaterialStateColor.resolveWith(
              (states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors
                      .purple; // the color when checkbox is selected;
                }
                return Colors.white; //the color when checkbox is unselected;
              },
            ),
          ),
        );
  }
}
