import 'package:flutter/material.dart';

class Mydesktopbody extends StatelessWidget {
  const Mydesktopbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Mobile'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(aspectRatio: 16/9,
              child: Container(
                color: Colors.cyan[800],
              ),
            ),
          ),Expanded(child: ListView.builder(itemBuilder: (context , index ){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.cyan[700],
                height: 120,
              ),
            );
          }))
        ],
      ),
    );
  }
}
