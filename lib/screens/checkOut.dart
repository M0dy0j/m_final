// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:m_final/components/btn.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int numPro = 2;
  int numPro1 = 1;
  bool clear = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 30,
                        ),
                      ),
                      const Text(
                        'Check Out',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            clear = true;
                          });
                        },
                        child: const Text(
                          'Clear All',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: const Color(0xffF4F4F4),
                ),
                !clear
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  child: Image.asset(
                                    'images/check0.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Hair Volumizer',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff222B45)),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            '\$48.00',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff222B45)),
                                          ),
                                          SizedBox(
                                            width: 100,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: const Color(
                                                          0xffEDF1F7),
                                                    ),
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
                                                      size: 18,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '$numPro',
                                                  style: const TextStyle(
                                                    color: Color(0xffF3651F),
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: const Color(
                                                            0xffEDF1F7)),
                                                  ),
                                                  child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        numPro += 1;
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      Icons.add,
                                                      color: Color(0xff8992A3),
                                                      size: 18,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  child: Image.asset(
                                    'images/check1.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Fantasist Night Cream',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff222B45)),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            '\$24.00',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xff222B45)),
                                          ),
                                          SizedBox(
                                            width: 100,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: const Color(
                                                          0xffEDF1F7),
                                                    ),
                                                  ),
                                                  child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        numPro1 != 0
                                                            ? numPro1 -= 1
                                                            : null;
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      Icons.remove,
                                                      color: Color(0xff8992A3),
                                                      size: 18,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '$numPro1',
                                                  style: const TextStyle(
                                                    color: Color(0xffF3651F),
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: const Color(
                                                            0xffEDF1F7)),
                                                  ),
                                                  child: IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        numPro1 += 1;
                                                      });
                                                    },
                                                    icon: const Icon(
                                                      Icons.add,
                                                      color: Color(0xff8992A3),
                                                      size: 18,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xffEDF1F7),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Color:',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff222B45),
                                    ),
                                  ),
                                  ClipOval(
                                    child: Container(
                                      color: const Color(0xff5762FF),
                                      width: 16,
                                      height: 16,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xff8992A3),
                                    size: 16,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Total Bill',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff222B45)),
                      ),
                      Text(
                        '\$72.00',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff222B45)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  btn(txt: 'Confirm Bill', icoon: true, onPressed: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
