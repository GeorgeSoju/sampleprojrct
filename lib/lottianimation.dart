import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            theme: ThemeData(primarySwatch: Colors.teal),
            useInheritedMediaQuery: true,
            home: lottianimation(),
            debugShowCheckedModeBanner: false,
          )));
}
class lottianimation extends StatelessWidget {
  const lottianimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children:[
           // Lottie.network('https://assets6.lottiefiles.com/packages/lf20_dDOuB7Z6uK.json'),
            Lottie.asset('assets/animations/50097-netflix-logo.json',fit: BoxFit.contain)]),
      ),
    );
  }
}
