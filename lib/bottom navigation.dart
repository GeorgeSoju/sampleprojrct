import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        useInheritedMediaQuery: true,
        home: bottomnav(),
        debugShowCheckedModeBanner: false,
      )));
}

class bottomnav extends StatefulWidget {
  const bottomnav({Key? key}) : super(key: key);

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  List screens = [
    const Text('Home'),
    Text('favorite'),
    Text('people'),
    Text('search'),
    Text('login'),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom navigation'),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        child: BottomNavigationBar(currentIndex: index,
          type: BottomNavigationBarType.shifting,
          onTap: (tapindex){
          setState(() {
            index=tapindex;

          });
          },
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.blue,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled,),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.key),label: 'Bookings'),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined),label: 'Offers'),
            BottomNavigationBarItem(icon: Icon(Icons.manage_accounts_outlined),label: 'Invite & Earn'),
            BottomNavigationBarItem(icon: Icon(Icons.live_help_outlined),label: 'Need Help'),
          ],
        ),
      ),
      body: Center(
        child: screens[index],
      ),
    );
  }
}
