import 'package:device_preview/device_preview.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => const MaterialApp(
        useInheritedMediaQuery: true,
        home: ExpansionSlide(),
        debugShowCheckedModeBanner: false,
      )));
}

class ExpansionSlide extends StatefulWidget {
  const ExpansionSlide({Key? key}) : super(key: key);

  @override
  State<ExpansionSlide> createState() => _ExpansionSlideState();
}

class _ExpansionSlideState extends State<ExpansionSlide> {
  final GlobalKey<ExpansionTileCardState> card1 = GlobalKey();
  final GlobalKey<ExpansionTileCardState> card2 = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Card'),
      ),
      body: ListView(
        children:  [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ExpansionTileCard(
              key: card1,
              title: const Text('Tap Me!!')
              ,leading: const CircleAvatar(child: Text('card1'),),
              subtitle: const Text('Tap to expand'),
              children: const [
                ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),title: Text('01'),),
                ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),title: Text('01'),),
                ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text('01'),),

              ],
            ),
          ),Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: ExpansionTileCard(
    key: card2,
    title: const Text('Tap Me!!')
    ,leading: const CircleAvatar(child: Text('card1'),),
    subtitle: const Text('Tap to expand'),
    children: const [
    ListTile(leading: CircleAvatar(backgroundColor: Colors.blue,),title: Text('01'),),
    ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),title: Text('01'),),
    ListTile(leading: CircleAvatar(backgroundColor: Colors.red,),title: Text('01'),),

    ],
    ),
          )],
      ),
    );
  }
}
