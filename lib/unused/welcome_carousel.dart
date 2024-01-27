import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

List<Container> containers = [
  Container(
    color: Colors.red,
    child: Center(child: Text('Container 1')),
  ),
  Container(
    color: Colors.blue,
    child: Center(child: Text('Container 2')),
  ),
  Container(
    color: Colors.green,
    child: Center(child: Text('Container 3')),
  ),
  // Add more containers as needed
];

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Carousel'),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: 200.0, // Adjust the height as needed
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          pauseAutoPlayOnTouch: true,
          aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
        ),
        items: containers.map((Container container) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: container,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
