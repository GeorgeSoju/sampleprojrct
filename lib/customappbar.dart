import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
            useInheritedMediaQuery: true,
            home: customappbar(),
            debugShowCheckedModeBanner: false,
          )));
}

class customappbar extends StatelessWidget {
  const customappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('custom appbar'),
        backgroundColor: Colors.blue.withOpacity(.3),
      ),
      body: Image.asset(
        'assets/images/bady-abbas-hxi_yRxODNc-unsplash.jpg',fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
