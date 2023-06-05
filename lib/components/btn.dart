import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  final String txt;
  final bool icoon;
  final Function() onPressed;

  const btn({super.key, required this.txt, required this.icoon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffF3651F),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: TextStyle(color: Colors.white,fontSize: 15),
            ),
            icoon?
            Icon(Icons.arrow_forward, color: Colors.white,)
                :Container(),
          ],
        ),
      ),
    );
  }
}