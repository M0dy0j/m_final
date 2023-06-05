import 'package:flutter/material.dart';
import 'package:m_final/components/btn.dart';
import 'package:m_final/components/con.dart';
import 'package:m_final/components/textfeaild/textFeaild.dart';
import 'package:m_final/screens/home/homeScreen.dart';
import 'package:m_final/components/textfeaild/pass.dart';
import 'package:m_final/screens/signUp.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'images/Logos.png',
                    )),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Please login to use the app",
                  style: TextStyle(
                      color: Color(0xff8992A3),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                const textFeaild(hinttext: 'Email or user name', icoon: false),
                const SizedBox(
                  height: 20,
                ),
                pass(),
                const SizedBox(
                  height: 26,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Color(0xff222B45),
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 46,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: const Offset(0, 4),
                          blurRadius: 4),
                    ],
                  ),
                  child: btn(
                    txt: 'Sign In',
                    icoon: false,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home_Screen(),
                          ));
                    },
                  ),
                ),
                const SizedBox(
                  height: 46,
                ),
                con(),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        color: Color(0xff8992A3),
                      ),
                    ),
                    InkWell(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xffFF5A00),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const signUp(),
                            ));
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
