import 'package:flutter/material.dart';
import 'package:m_final/components/cards/favouriteCard.dart';
import 'package:m_final/screens/checkOut.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
          child: Column(
            children: [
              SizedBox(
                height: 35,
                child: Stack(
                  children: [
                    const Center(
                      child: Text(
                        'Favourites',
                        style:
                            TextStyle(color: Color(0xff222B45), fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Image.asset('images/shop.png'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CheckOut(),
                                ));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 11),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CheckOut(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xffF3651F),
                            ),
                            width: 20,
                            height: 20,
                            alignment: Alignment.center,
                            child: const Text(
                              '2',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20, top: 15),
                color: const Color(0xffF4F4F4),
              ),
              FavouriteCards(),
            ],
          ),
        ),
      ),
    );
  }
}
