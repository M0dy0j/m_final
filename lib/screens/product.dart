import 'package:flutter/material.dart';
import 'package:m_final/components/btn.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int numPro = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/back_pro.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back, size: 30),
                      ),
                      const Spacer(),
                      const Icon(Icons.favorite_border, size: 30),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(Icons.link, size: 30),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(3, (index) {
                            double size = 10 + (1 - (index - 0).abs()) * 4;
                            return Container(
                              width: size,
                              height: size,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: index == 0
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.3),
                              ),
                            );
                          }),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(bottom: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Chanel Cerest',
                                      style: TextStyle(
                                        color: Color(0xff8992A3),
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    const Text(
                                      'Fantasist Night Cream',
                                      style: TextStyle(
                                          color: Color(0xff222B45),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    SizedBox(
                                      width: 124,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.shopping_cart,
                                                color: Color(0xffF3651F),
                                                size: 16,
                                              ),
                                              Text(
                                                '4.6k',
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                          Container(
                                            color: const Color(0xffE9E9E9),
                                            width: 3,
                                            height: 3,
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.remove_red_eye,
                                                color: Color(0xffF3651F),
                                                size: 16,
                                              ),
                                              Text(
                                                '12.4k',
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'Rating',
                                              style: TextStyle(
                                                  color: Color(0xff222B45),
                                                  fontSize: 12),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFB300),
                                                  size: 16,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFB300),
                                                  size: 16,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFB300),
                                                  size: 16,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFB300),
                                                  size: 16,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xffF4F4F4),
                                                  size: 16,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const Text(
                                              '(125 rated)',
                                              style: TextStyle(
                                                  color: Color(0xff8992A3),
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          '\$24.00',
                                          style: TextStyle(
                                            color: Color(0xffF3651F),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'Fantasist Eyeshadow Palette is comes to looking your best, there are some standard tools of the tra...',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff8992A3),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Show more',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xffF3651F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: const Color(0xffF4F4F4),
                                margin:
                                    const EdgeInsets.only(top: 16, bottom: 12),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Quality',
                                    style: TextStyle(
                                        color: Color(0xff222B45),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xff8992A3),
                                  )
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: const Color(0xffF4F4F4),
                                margin:
                                    const EdgeInsets.only(top: 12, bottom: 12),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    'Warranty Policy',
                                    style: TextStyle(
                                        color: Color(0xff222B45),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xff8992A3),
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.only(top: 30, bottom: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xffEDF1F7)),
                                            ),
                                            child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  numPro += 1;
                                                });
                                              },
                                              icon: const Icon(Icons.add,
                                                  color: Color(0xff8992A3)),
                                            ),
                                          ),
                                          Text(
                                            '$numPro',
                                            style: const TextStyle(
                                                color: Color(0xffF3651F),
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xffEDF1F7)),
                                            ),
                                            child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  numPro != 0
                                                      ? numPro -= 1
                                                      : null;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.remove,
                                                color: Color(0xff8992A3),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 170,
                                      child: btn(
                                          txt: 'Add to Cart',
                                          icoon: true,
                                          onPressed: () {}),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
