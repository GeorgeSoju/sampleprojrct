import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        useInheritedMediaQuery: true,
        home:const ExitApp(),
        debugShowCheckedModeBanner: false,
      ));
}
class ExitApp extends StatelessWidget {
  const ExitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> showalert() async {
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: const Text('Exit'),
          content: const Text('Do u want to exit?'),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            },
                child: const Text('yes')),TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            },
                child: const Text('No')),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            },
                child: const Text('Cancel')),


          ],
        );

      });
    }


    return WillPopScope(
      onWillPop: showalert,
      child: const Scaffold(
        body: Center(child: Text('Press button to exit')),
      ),
    );
  }


}
