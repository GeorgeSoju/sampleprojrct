import 'package:flutter/material.dart';

class listCustom extends StatelessWidget {
  const listCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'list custom',
          style: TextStyle(color: Colors.brown),
        ),
      ),
      body:
      ListView.custom(
      //     childrenDelegate: SliverChildListDelegate([
      //   const Icon(Icons.ac_unit_rounded),
      //   const Icon(Icons.ac_unit_rounded),
      //   const Icon(Icons.ac_unit_rounded),
      //   const Icon(Icons.ac_unit_rounded),
      //   const Icon(Icons.ac_unit_rounded),
      // ])
     childrenDelegate: SliverChildBuilderDelegate((ctx,index){return Card(color: Colors.red[color[index]],
    child: const,);} ),
    );
  }
}
