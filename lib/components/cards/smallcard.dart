import 'package:flutter/material.dart';
import 'package:m_final/screens/product.dart';

class SmallCard extends StatelessWidget {

  List smallCard = [
    {'name' : 'images/small0.png', 'desc' : 'Haircare'},
    {'name' : 'images/small1.png', 'desc' : 'Skincare'},
    {'name' : 'images/small2.png', 'desc' : 'Lip Stick'},
    {'name' : 'images/small3.png', 'desc' : 'Nail Art'},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 102,
      margin: EdgeInsets.only(bottom: 26),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: smallCard.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              width: 80,
              margin: EdgeInsets.only(right: 26),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Image.asset('${smallCard[index]['name']}'),
                  SizedBox(height: 6,),
                  Text('${smallCard[index]['desc']}', style: TextStyle(color: Color(0xff8992A3),),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
