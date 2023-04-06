import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my shop'),
      ),
      body: Card(
        child: ListView(
          children: const [
            ListTile(
              title: Text('Apple'),
              subtitle: Text('\$12'),
              leading: CircleAvatar(
              ),
              trailing: Icon(Icons.shopping_bag),
            ),
            Text('apple'),
          ],
        ),
      ),
    );
  }
}
