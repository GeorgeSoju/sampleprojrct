import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:samplrprojrct/Custom%20widget.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            theme: ThemeData(primarySwatch: Colors.teal),
            useInheritedMediaQuery: true,
            home: const GridDepend(),
            debugShowCheckedModeBanner: false,
          )));
}

class GridDepend extends StatelessWidget {
  const GridDepend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('grid dependency'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children:  [
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: CustomWidget(
                      backgroundColor: Colors.pink,
                      title: Text('grid'),

                      onpress: (){},
                      icon: Icon(Icons.ice_skating))),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    color: Colors.cyan,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    color: Colors.green,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    color: Colors.yellowAccent,
                  )),
              const StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Card(
                    color: Colors.pink,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
