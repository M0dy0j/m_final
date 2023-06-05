import 'package:flutter/material.dart';

class pass extends StatefulWidget {
  @override
  State<pass> createState() => _passState();
}

class _passState extends State<pass> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 14,),
      child: TextField(
        obscureText: isActive,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Password',
          hintStyle: TextStyle(
            color: Color(0xffC5CEE0),
            fontSize: 15,
          ),
          suffixIcon: isActive
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isActive = false;
                    });
                  },
                  icon: Icon(Icons.visibility_off),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isActive = true;
                    });
                  },
                  icon: Icon(Icons.visibility),
                ),
        ),
      ),
    );
  }
}
