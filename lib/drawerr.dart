import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        useInheritedMediaQuery: true,
        home: Drawerr(),
        debugShowCheckedModeBanner: false,
      )));
}

class Drawerr extends StatelessWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer:
      // Theme(data:(Theme.of(context).copyWith(canvasColor: Colors.grey[300])),
      //   child:
        Drawer(
          child: Container(decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.blue,Colors.blueAccent])),
            child: ListView(
              children: const [
                UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.pink),
                  otherAccountsPictures: [
                    CircleAvatar(backgroundImage: AssetImage('assets/images/fahad.jpg'),)
                  ],
                  accountName: Text('soju'), accountEmail: Text('soju@gmail.com',
                ),currentAccountPicture:CircleAvatar(backgroundImage: AssetImage('assets/images/kamal.png'),) ,)
              , ListTile(leading: Icon(Icons.home),
                title: Text('Home'),),
                ListTile(leading: Icon(Icons.group),
                  title: Text('New Group'),),
                ListTile(leading: Icon(Icons.contact_page_outlined),
                  title: Text('Contacts'),),
                ListTile(leading: Icon(Icons.broadcast_on_personal),
                  title: Text('New Broadcast'),)],
            ),
          ),
        ),


    );
  }
}
