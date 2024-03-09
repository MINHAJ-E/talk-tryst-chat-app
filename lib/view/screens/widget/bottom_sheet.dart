import 'package:flutter/material.dart';
import 'package:talk_tryst/constants/constants.dart';

class BottomSheettt extends StatelessWidget {
  const BottomSheettt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of IconData for different icons
    List<IconData> icons = [
      Icons.ac_unit,
      Icons.access_alarm,
      Icons.access_time,
      Icons.account_balance,
      Icons.account_box,
      Icons.account_circle,
      Icons.account_tree,
      Icons.add,
      Icons.add_alarm,
    ];

    return Container(
      color: BGColors.BackGroundColor,
      height: 600.0,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(icons.length, (index) {
          return Icon(icons[index]);
        }),
      ),
    );
  }
}
