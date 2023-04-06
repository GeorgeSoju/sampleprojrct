import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        useInheritedMediaQuery: true,
        home:const media(),
        debugShowCheckedModeBanner: false,
      ));
}

class media extends StatelessWidget {
  const media({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
