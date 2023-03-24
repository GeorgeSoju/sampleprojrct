import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(currentIndex: index,
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
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wish list'),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.login),label: 'log in'),
        ],
      ),
      body: Center(
        child: screens[index],
      ),
    );
  }
}
