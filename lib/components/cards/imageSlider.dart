import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int sliderPage = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 26),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 127,
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: 3,
                  onPageChanged: (int page) {
                    setState(() {
                      sliderPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/slider0.png',
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(3, (index) {
                        double size = 6.0 +
                            (1 - (index - sliderPage).abs()) * 4;
                        return Container(
                          width: size,
                          height: size,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == sliderPage
                                ? Colors.white
                                : Colors.grey.withOpacity(0.5),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
