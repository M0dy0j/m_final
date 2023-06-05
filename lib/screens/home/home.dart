// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:m_final/components/cards/headcard.dart';
import 'package:m_final/components/cards/imageSlider.dart';
import 'package:m_final/components/cards/lcard.dart';
import 'package:m_final/components/cards/mediumcard.dart';
import 'package:m_final/components/cards/smallcard.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 14),
            child: Column(
              children: [
                Stack(
                  children: [
                    const Center(
                      child: Text(
                        'Discover',
                        style: TextStyle(
                          color: Color(0xff222B45),
                          fontSize: 17
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Align(alignment: Alignment.centerRight,child: Image.asset('images/shop.png'),),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: const Color(0xffF4F4F4),
                ),
                const SizedBox(height: 15,),
                const headCard(text: 'Categories',view: true),
                SmallCard(),
                const headCard(text: 'Recommend for You',view: true),
                MediumCard(reverse: false),
                const ImageSlider(),
                const headCard(text: 'Valentine\'s Day',view: true),
                MediumCard(reverse: true),
                const headCard(text: 'Popular Products', view: false),
                LargeCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
