import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class sliderTabs extends StatelessWidget {
  sliderTabs({super.key});
  static const String routeName='homeScreen';
  final imagesPath=[
    "assets/images_d3/slider3.png",
    "assets/images_d3/slider2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: CarouselSlider.builder(
          itemCount: imagesPath.length,
          itemBuilder: (context,index,reaIndex) {
            final imagePath= imagesPath[index];
            return buildImage(imagePath,index);
          },
          options: CarouselOptions(height: 140,)),
    );
  }
  Widget buildImage(String imagePath , int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(imagePath,
        width: 300,
      ),
    ),
  );
}
