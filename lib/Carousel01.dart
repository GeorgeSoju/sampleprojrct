import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: Cslider(),
            debugShowCheckedModeBanner: false,
          )));
}

class Cslider extends StatelessWidget {
  const Cslider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel'),
      ),
      body: CarouselSlider(
          items: List.generate(10, (index) {
            return Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain
                      ,
                      image: AssetImage('assets/images/amazon.jpg'))),
            );
          }),
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: .8,
            height:200,
            //MediaQuery.of(context).size.height,
            enlargeCenterPage: true,
            autoPlayCurve: Curves.linear,
            autoPlayAnimationDuration: Duration(seconds: 3),
            enableInfiniteScroll: true,
          )),
    );
  }
}
