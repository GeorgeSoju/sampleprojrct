import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {runApp(DevicePreview(
    builder: (BuildContext context) => ContactApp()));}

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Screen',useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactScreen(),
    );
  }
}

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/Apple.png'),
            ),
            SizedBox(height: 16),
            const Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'johndoe@email.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            const Text(
              'Contact Info',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('123-456-7890'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('123 Main St, Anytown USA'),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('June 1, 1980'),
            ),
          ],
        ),
      ),
    );
  }
}
