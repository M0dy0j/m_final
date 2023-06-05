import 'package:flutter/material.dart';

class headCard extends StatelessWidget {
  final String text;
  final bool view;

  const headCard({super.key, required this.text, required this.view});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 17,
              color: Color(0xff222B45),
            ),
          ),
          const Spacer(),
          view ?
          Container(
            child: const Text(
              'View all',
              style: TextStyle(
                color: Color(0xffF3651F),
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            padding: const EdgeInsets.only(right: 16),
          )
              :
              Container(),
        ],
      ),
    );
  }
}
