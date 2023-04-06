import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('Desktop'),
      ),
      body: Row(
        children: [
          Expanded(child: Column(
            children: [
              AspectRatio(aspectRatio: 16/9,
              child: Container(
                color: Colors.cyan[800],
                height: 120,
              ),)
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color: Colors.cyan[800],
            ),
          )
        ],
      ),
    );
  }
}
