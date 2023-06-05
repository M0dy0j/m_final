// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:m_final/components/btn.dart';
import 'package:m_final/components/con.dart';
import 'package:m_final/components/textfeaild/pass.dart';
import 'package:m_final/components/textfeaild/textFeaild.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 10, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: const Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 36,
              ),
              const SizedBox(
                width: 200,
                child: Text(
                  'Create new Accout',
                  style: TextStyle(
                      color: Color(0xff222B45),
                      fontSize: 36,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                  width: 254,
                  child: Text(
                    'Please type full information below and we can create your account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff8992A3),
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              const textFeaild(hinttext: 'Full Name', icoon: false),
              const SizedBox(
                height: 20,
              ),
              const textFeaild(hinttext: 'Your Email', icoon: false),
              const SizedBox(
                height: 20,
              ),
              pass(),
              const SizedBox(
                height: 20,
              ),
              const textFeaild(hinttext: 'Date of Birth', icoon: true),
              const SizedBox(
                height: 40,
              ),
              btn(txt: 'Sign UP', icoon: false, onPressed: () {}),
              const SizedBox(
                height: 30,
              ),
              con(),
            ],
          ),
        )),
      ),
    );
  }
}
