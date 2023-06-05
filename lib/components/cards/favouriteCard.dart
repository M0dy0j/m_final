import 'package:flutter/material.dart';
import 'package:m_final/screens/product.dart';

class FavouriteCards extends StatelessWidget {

  List favouriteCard = [
    {'name' : 'images/large0.png',},
    {'name' : 'images/large1.png',},
    {'name' : 'images/large2.png',},
    {'name' : 'images/large3.png',},
  ];

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.builder(
        controller: ScrollController(keepScrollOffset: false),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));},
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  width: 164,
                  height: 220,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 164,
                        child: Image.asset(
                          '${favouriteCard[index]['name']}',
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
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));},
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  width: 164,
                  height: 220,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 164,
                        child: Image.asset(
                          '${favouriteCard[favouriteCard.length-(index+1)]['name']}',
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
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
