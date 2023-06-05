import 'package:flutter/material.dart';
import 'package:m_final/screens/product.dart';
class LargeCards extends StatelessWidget {

  List largeCard = [
    {'name' : 'images/large0.png',},
    {'name' : 'images/large1.png',},
    {'name' : 'images/large2.png',},
    {'name' : 'images/large3.png',},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SizedBox(
      height: 600-16,
      child: ListView.builder(
        controller: ScrollController(keepScrollOffset: false),
        itemCount: 2,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 164,
                    height: 272,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 166,
                          child: Image.asset(
                            '${largeCard[index]['name']}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Chanel Cerest',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff8992A3),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'Andora Skincare',
                          style: TextStyle(
                              color: Color(0xff222B45),
                              fontSize: 14,
                          ),
                        ),
                        const Text(
                          '\$24.00',
                          style: TextStyle(
                              color: Color(0xff222B45),
                              fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 44),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.shopping_cart, color: Color(0xffF3651F), size: 16,),
                                  Text('4.6k',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                              Container(color: const Color(0xffE9E9E9), width: 3, height: 3,),
                              Row(
                                children: const [
                                  Icon(Icons.remove_red_eye, color: Color(0xffF3651F), size: 16,),
                                  Text('12.4k',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 164,
                    height: 272,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 166,
                          child: Image.asset(
                            '${largeCard[largeCard.length-(index+1)]['name']}',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          'Chanel Cerest',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff8992A3),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          'Andora Skincare',
                          style: TextStyle(
                              color: Color(0xff222B45),
                              fontSize: 14,
                          ),
                        ),
                        const Text(
                          '\$24.00',
                          style: TextStyle(
                              color: Color(0xff222B45),
                              fontSize: 15,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 44),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.shopping_cart, color: Color(0xffF3651F), size: 16,),
                                  Text('4.6k',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                              Container(color: const Color(0xffE9E9E9), width: 3, height: 3,),
                              Row(
                                children: const [
                                  Icon(Icons.remove_red_eye, color: Color(0xffF3651F), size: 16,),
                                  Text('12.4k',style: TextStyle(fontSize: 12),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
