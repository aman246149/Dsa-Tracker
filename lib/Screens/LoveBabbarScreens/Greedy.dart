// @dart=2.9

import 'package:api_fetch/data.dart';
import 'package:api_fetch/helper/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Greedy extends StatefulWidget {
  @override
  _GreedyState createState() => _GreedyState();
}

class _GreedyState extends State<Greedy> {
  List arraylist = [];

  Helper helpers = new Helper(boxNo: 8, data: greedy, updateBoxNo: 108);

  updateLengthInLengthBox() {
    helpers.updateLengthInLengthBox(arraylist);
  }

  addToDatabase() async {
    helpers.addToDatabase();
  }

  void getDataFromDataBase() async {
    var helpersarray = await helpers.getDataFromDataBase();
    print(helpersarray);
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
    print("listipdate");
    updateLengthInLengthBox();
  }

  openBox() async {
    List helpersarray = await helpers.openBox();

    setState(() {
      arraylist = helpersarray;
    });
    // updateLengthInLengthBox();
  }

  @override
  void initState() {
    super.initState();
    openBox();
  }

  @override
  void dispose() {
    super.dispose();
  }

  callbackName() {
    print("item get clicked");
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
      title: GestureDetector(
        onTap: () async {
          await canLaunch(arraylist[index]['url'])
              ? await launch(arraylist[index]['url'])
              : throw 'Could not launch';
        },
        child: Text(
          arraylist[index]['Questions by Love Babbar:'].toString(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: GestureDetector(
        onTap: () async {
          await canLaunch(arraylist[index]['url'])
              ? await launch(arraylist[index]['url'])
              : throw 'Could not launch';
        },
        child: Row(
          children: <Widget>[
            Icon(Icons.linear_scale, color: Colors.yellowAccent),
            Text(" Intermediate", style: TextStyle(color: Colors.white))
          ],
        ),
      ),
      trailing: buildCheckbox(index, () => callbackName),
    );
  }

  Checkbox buildCheckbox(int index, Function() callbackFunction) {
    return Checkbox(
      onChanged: (value) {
        callbackFunction();
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
    );
  }
}
