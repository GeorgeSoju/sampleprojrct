import 'dart:async';


import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samplrprojrct/HomeScreen.dart';
import 'package:samplrprojrct/loginpage%20with%20validation.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>
    MaterialApp(
      useInheritedMediaQuery: true,
      home: splash(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      Timer(Duration(seconds: 2),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          ///gradient colour for whole body
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.centerLeft,
              end: Alignment.topRight)),
      // decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         fit: BoxFit.fill, image: AssetImage('assets/images/white3.jpg'))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.contactless_sharp,
            //   size: 150,
            //   color: Colors.green,
            // ),
            Image.asset(
              'assets/icons/campfire.png',
              height: 300,
              width: 300,
            ),
            // Image.network('https://cdn1.iconfinder.com/data/icons/social-media-vol-3-1/24/_spotify-512.png'),
            const Text(
              'camping guide ',
              style:
              // GoogleFonts.aBeeZee(
              //   textStyle: Theme.of(context).textTheme.bodyMedium,
              //   fontSize: 50,
              //   fontWeight: FontWeight.w700,
              //   fontStyle: FontStyle.italic,
              //   color: Colors.red
             // )
               TextStyle(
               fontSize: 45,
                 color: Colors.black,
                fontWeight: FontWeight.bold, fontFamily: 'TiltPrism'),
            )
          ],
        ),
      ),
    ));
  }
}
