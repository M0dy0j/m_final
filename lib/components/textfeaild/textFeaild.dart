import 'package:flutter/material.dart';

class textFeaild extends StatelessWidget {
  final String hinttext;
  final bool icoon;

  const textFeaild({super.key, required this.hinttext, required this.icoon});
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 14,),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            hintStyle: TextStyle(
              color: Color(0xffC5CEE0),fontSize: 15,
            ),
          suffixIcon:
          icoon ? Icon(Icons.calendar_month) : Container(width: 0, height: 0,),
        ),
      ),
    );
  }
}
