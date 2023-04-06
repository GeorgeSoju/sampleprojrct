import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            theme: ThemeData(primarySwatch: Colors.teal),
            useInheritedMediaQuery: true,
            home:const SimpleAlert(),
            debugShowCheckedModeBanner: false,
          )));
}

class SimpleAlert extends StatefulWidget {
  const SimpleAlert({Key? key}) : super(key: key);

  @override
  State<SimpleAlert> createState() => _SimpleAlertState();
}

class _SimpleAlertState extends State<SimpleAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert')),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: const Text('Exit'),
              content: const Text('Do u want to exit?'),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    child: const Text('yes')),TextButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    child: const Text('No')),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    child: const Text('Cancel')),


              ],
            );
          });
        }, child: const Text('Show Alert')),
      ),
    );
  }
}
