import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            theme: ThemeData(primarySwatch: Colors.orange),
            useInheritedMediaQuery: true,
            home: const Drawerr(),
            debugShowCheckedModeBanner: false,
          )));
}

class Drawerr extends StatelessWidget {
  const Drawerr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer:
          // Theme(data:(Theme.of(context).copyWith(canvasColor: Colors.grey[300])),
          //   child:
          Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.white, Colors.orangeAccent])),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children:  [Padding(
              padding: const EdgeInsets.only(top:35,left:25,bottom: 25),
              child: Row(
                children: const [ CircleAvatar(radius:30,backgroundImage: AssetImage('assets/images/fahad.jpg'),),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Soju',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  )
                 ] ),
            )



              // SizedBox(
              //   height: 100,
              //   width: 100,
              //   child: ListTile(
              //     leading: SizedBox(
              //         height: 100,
              //         width: 100,
              //         child: CircleAvatar(
              //           radius: 80,
              //           backgroundImage: AssetImage(
              //             'assets/images/fahad.jpg',
              //           ),
              //         )),
              //     title: Text('Soju'),
              //     subtitle: Text('soju@gmail.com'),
              //   ),
              // ),
                ,const ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text('New Group'),
              ),
              const ListTile(
                leading: Icon(Icons.contact_page_outlined),
                title: Text('Contacts'),
              ),
              const ListTile(
                leading: Icon(Icons.broadcast_on_personal),
                title: Text('New Broadcast'),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: const Size(250, 50)),onPressed: () {  },
                    child: const Text('Sign Out')),
                  ),
                ),
              ),
            ]
          ),
        ),

          ) );
  }
}
