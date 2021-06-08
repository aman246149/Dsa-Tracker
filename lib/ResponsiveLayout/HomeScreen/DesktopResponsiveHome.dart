// @dart=2.9

import 'package:api_fetch/Components/Card.dart';
import 'package:flutter/material.dart';

class DesktopResponsiveHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // shrinkWrap: true,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,

      crossAxisCount: 4,
      children: [
        CardCollection(
          sheetname: 'Love Babbar Sheet',
          goals: '0',
          target: '450',
        ),
        CardCollection(
          sheetname: 'Prepcoading Sheet',
          goals: '0',
          target: '700',
        ),
        CardCollection(
          sheetname: 'Striver DSA Sheet',
          goals: '0',
          target: '250',
        ),
        CardCollection(
          sheetname: 'Operating System Notes',
          goals: '0',
          target: '250',
        ),
        CardCollection(
          sheetname: 'Object Oriented Notes',
          goals: '0',
          target: '250',
        ),
        CardCollection(
          sheetname: 'DataBase ManageMent Notes',
          goals: '0',
          target: '250',
        ),
      ],
    );
  }
}
