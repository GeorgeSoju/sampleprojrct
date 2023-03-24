
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class Listbuilder extends StatelessWidget {
  var name = ["apple", "orange", "grapes", "kiwi", "jackfruit"];
  var images = [
    "assets/images/Apple.png",
    "assets/images/Apple.png",
    "assets/images/Apple.png",
    "assets/images/Apple.png",
    "assets/images/Apple.png"
  ];
  var price =[100,200,300,400,500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list view builder'),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text("${price[index]}"),
            leading: CircleAvatar(backgroundImage:AssetImage(images[index])),
        ),
        );
      },itemCount: name.length,
      ),
    );
  }
}
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        useInheritedMediaQuery: true,
        home: Listbuilder(),
        debugShowCheckedModeBanner: false,
      )));
}
