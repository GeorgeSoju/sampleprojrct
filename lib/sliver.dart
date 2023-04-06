import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            theme: ThemeData(primarySwatch: Colors.teal),
            useInheritedMediaQuery: true,
            home:sliver01(),
            debugShowCheckedModeBanner: false,
          )));
}

class sliver01 extends StatelessWidget {
  var color =[900,800,700,600,500,400,300,200];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [SliverAppBar(
          elevation: 0,
        floating: true,
        pinned: true,
        title: Text('custom app bar'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))],
        bottom: AppBar(
          elevation: 0,
          title: Container(color: Colors.white,
            child: const TextField(decoration: InputDecoration(hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.keyboard)),
            ),
          ),
        ),
        ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 80,
              child: Text(''),
              color: Colors.blue[color[index]],
            );
          },
          )
      ) ],

      ),
    );
  }
}
