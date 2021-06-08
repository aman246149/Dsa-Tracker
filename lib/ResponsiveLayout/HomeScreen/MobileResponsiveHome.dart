// @dart=2.9

import 'package:api_fetch/Components/Card.dart';
import 'package:api_fetch/Screens/Dbms.dart';
import 'package:api_fetch/Screens/LoveBabbar.dart';
import 'package:api_fetch/Screens/Objectoriented.dart';
import 'package:api_fetch/Screens/Operatingsystem.dart';
import 'package:api_fetch/Screens/Prepcoading.dart';
import 'package:api_fetch/Screens/Striver.dart';
import 'package:flutter/material.dart';

class MobileResponsiveHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // shrinkWrap: true,
      // crossAxisSpacing: 3,
      crossAxisCount: 2,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoveBabbar()),
          ),
          child: CardCollection(
            sheetname: 'Love Babbar Sheet',
            goals: '0',
            target: '450',
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PrepCoading()),
          ),
          child: CardCollection(
            sheetname: 'Prepcoading Sheet',
            goals: '0',
            target: '700',
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Striver()),
          ),
          child: CardCollection(
            sheetname: 'Striver DSA Sheet',
            goals: '0',
            target: '250',
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OperatingSystem()),
          ),
          child: CardCollection(
            sheetname: 'Operating System Sheet',
            goals: '0',
            target: '250',
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Objectoriented()),
          ),
          child: CardCollection(
            sheetname: 'Object Oriented Sheet',
            goals: '0',
            target: '250',
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dbms()),
          ),
          child: CardCollection(
            sheetname: 'DataBase ManageMent Sheet',
            goals: '0',
            target: '250',
          ),
        ),
      ],
    );
  }
}
