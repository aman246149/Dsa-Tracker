// @dart=2.9

import 'package:api_fetch/data.dart';
import 'package:api_fetch/helper/helper.dart';
import 'package:flutter/cupertino.dart';
import '../../helper/helper.dart';
import 'package:flutter/material.dart';

class ArrayScreen extends StatefulWidget {
  @override
  _ArrayScreenState createState() => _ArrayScreenState();
}

class _ArrayScreenState extends State<ArrayScreen> {
  List arraylist = [];

  Helper helpers = new Helper(boxNo: 1, data: array, updateBoxNo: 101);

  updateLengthInLengthBox() {
    helpers.updateLengthInLengthBox(arraylist);
  }

  addToDatabase() {
    helpers.addToDatabase();
  }

  getDataFromDataBase() async {
    var helpersarray = await helpers.getDataFromDataBase();
    setState(() {
      arraylist = helpersarray;
    });
  }

  updateDataInDataBase(int index, bool value) async {
    var getUpdateDataFromHelper =
        await helpers.updateDataInDataBase(index, value);
    setState(() {
      arraylist = getUpdateDataFromHelper;
    });
    updateLengthInLengthBox();
  }

  openBox() async {
    List helpersarray = await helpers.openBox();

    setState(() {
      arraylist = helpersarray;
    });
  }

  @override
  void initState() {
    super.initState();
    openBox();
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
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(CupertinoIcons.arrow_2_squarepath, color: Colors.white),
      ),
      title: Text(
        arraylist[index]['arrayquestion:'].toString(),
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
              return Colors.purple; // the color when checkbox is selected;
            }
            return Colors.white; //the color when checkbox is unselected;
          },
        ),
      ),
    );
  }
}
