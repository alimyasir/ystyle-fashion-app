import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatefulWidget {
 final String? imgPath;
 final int? itemCount;
   ImageCarousel({super.key,this.imgPath, this.itemCount});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: widget.itemCount!, // You can pass this as a parameter if it's dynamic
      itemBuilder: (BuildContext context, int itemIndex, int i) {
        return Container(
          height: 140,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              image: AssetImage(widget.imgPath!), // Consider passing image path as a parameter
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 140,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        enableInfiniteScroll: false,
        enlargeFactor: 0.13,
        viewportFraction: 0.25,
        aspectRatio: 16 / 8,
      ),
    );
  }
}