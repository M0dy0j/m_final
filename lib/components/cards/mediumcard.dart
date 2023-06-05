import 'package:flutter/material.dart';
import 'package:m_final/screens/product.dart';

class MediumCard extends StatelessWidget {
  final bool reverse;

  List mediumCard = [
    {'name' : 'images/medium0.png',},
    {'name' : 'images/medium1.png',},
    {'name' : 'images/medium2.png',},
    {'name' : 'images/medium3.png',},
    {'name' : 'images/medium4.png',},
    {'name' : 'images/medium5.png',},
  ];

   MediumCard({super.key, required this.reverse});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 202,
      margin: const EdgeInsets.only(bottom: 26),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mediumCard.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              width: 130,
              margin: const EdgeInsets.only(right: 26),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      reverse
                      ?
                      Image.asset('${mediumCard[mediumCard.length-(index+1)]['name']}',)
                      :
                      Image.asset('${mediumCard[index]['name']}',),
                      Container(
                          margin: const EdgeInsets.only(top: 6, right: 6),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.black.withOpacity(0.0969),
                          ),
                          child: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                      ),
                      !reverse
                          ?index == 0
                             ? Stack(
                            children: [
                              Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(left: 15),
                        child: Image.asset('images/mark.png'),
                      ),
                              const Padding(
                                padding: EdgeInsets.only(left: 21.5, top: 12),
                                child: Text('-5%', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w800),),
                              )
                            ],
                          )
                             : Container()
                          : index == 1
                             ? Stack(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            margin: const EdgeInsets.only(left: 15),
                            child: Image.asset('images/mark.png'),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 21.5, top: 12),
                            child: Text('-5%', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w800),),
                          )
                        ],
                      )
                             : Container()
                    ],
                  ),
                  const SizedBox(height: 6,),
                  const Text('Chanel Cerest', style: TextStyle(color: Color(0xff8992A3), fontSize: 12, fontWeight: FontWeight.w600),),
                  const SizedBox(height: 4,),
                  const Text('Andora Skincare', style: TextStyle(color: Color(0xff222B45), fontSize: 15, ),),
                  const SizedBox(height: 6,),
                  const Text('\$24.00', style: TextStyle(color: Color(0xff222B45), fontSize: 15, fontWeight: FontWeight.w600 ),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
