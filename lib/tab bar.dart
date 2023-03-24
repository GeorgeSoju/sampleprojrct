import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:samplrprojrct/whatsappchat2.dart';

class Mytab extends StatelessWidget {
  const Mytab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('WhatsApp'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),PopupMenuButton(itemBuilder:  (context){
                return [
                  const PopupMenuItem(child: Text('New Group')),
                  const PopupMenuItem(child: Text('New Broadcast')),
                  const PopupMenuItem(child: Text('Linked Devices')),
                  const PopupMenuItem(child: Text('Starred messages')),
                  const PopupMenuItem(child: Text('Settings')),
                ];
              })
            ],
            bottom:  TabBar(
              labelPadding: EdgeInsets.zero,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                SizedBox(
                    width: MediaQuery.of(context).size.width*.1,
                    child: const Tab(
                      icon: Icon(Icons.people_alt_outlined),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width*.3,
                  child: const Tab(
                    text: 'Chats',
                  ),
                ),
                SizedBox( width: MediaQuery.of(context).size.width*.3,
                  child: const Tab(
                    text: 'Status',
                  ),
                ),
                SizedBox( width: MediaQuery.of(context).size.width*.3,
                  child: const Tab(
                    text: 'Calls',
                  ),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('Community'),
              ),
              whatsappchat(),
              Center(
                child: Text('Status'),
              ),
              Center(
                child: Text('Calls'),
              )
            ],
          ),
        ));
  }
}

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            theme: ThemeData(primarySwatch: Colors.teal),
            useInheritedMediaQuery: true,
            home: Mytab(),
            debugShowCheckedModeBanner: false,
          )));
}
