import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class Helper {
  late Box box;
  late Box lengthBox;
  List getDatafromDb = [];
  final List data;
  final int boxNo;
  final int updateBoxNo;

  Helper({required this.data, required this.boxNo, required this.updateBoxNo});

  updateLengthInLengthBox(List arraylist) async {
    int start = 0;
    int end = arraylist.length - 1;
    int count = 0;

    while (start <= end) {
      if (arraylist[start]['undefined'] == true) {
        count++;
        start++;
      } else {
        if (arraylist[end]['undefined'] == true) {
          count++;
          end--;
        } else {
          start++;
          end--;
        }
      }
    }

    var value = [count, arraylist.length];
    print(value);

    try {
      print("addtodatabaserunning");

      if (await box.get(updateBoxNo).length == null) {
        await lengthBox.put(updateBoxNo, value);
      } else if (await box.get(updateBoxNo).length > 0) {
        return;
      }
    } catch (error) {
      print("addtodatabaserunning");

      await lengthBox.put(updateBoxNo, value);
    }
  }

  addToDatabase() async {
    try {
      print("addtodatabaserunning");

      if (await box.get(boxNo).length == null) {
        box.put(boxNo, data);
      } else if (await box.get(boxNo).length > 0) {
        return;
      }
    } catch (error) {
      print("addtodatabaserunning");

      box.put(boxNo, data);
    }
  }

  Future<List> getDataFromDataBase() async {
    // setState(() {
    getDatafromDb = box.get(boxNo);
    // });
    print("get todatabaserunning");
    // print(getDatafromDb);
    return getDatafromDb.toList();
    // updateLengthInLengthBox(arraylist);
  }

  Future<List> updateDataInDataBase(int index, bool value) async {
    var newArrayList = box.get(boxNo);
    newArrayList[index]['undefined'] = value;
    await box.put(boxNo, newArrayList);
    return newArrayList;
    // setState(() {
    //   arraylist = newArrayList;
    // });
  }

  Future<List> openBox() async {
    print("openboxrunning");
    Directory directory = await pathProvider.getApplicationDocumentsDirectory();

    if (directory != null) {
    } else {
      Hive.init(directory.path);
    }

    box = await Hive.openBox("arrayBox");
    lengthBox = await Hive.openBox("lengthBox");

    addToDatabase();
    return getDataFromDataBase();
  }
}
