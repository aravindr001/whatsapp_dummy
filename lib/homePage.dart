import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/chats.dart';
import 'package:whatsapp_ui/status.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(26, 133, 106, 1),

          title: const Text('Whatsapp',style: TextStyle(fontSize: 25 ),),
          actions: [
            PopupMenuButton(
              // color:  Color.fromARGB(255, 8, 104, 97),
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(child: Text('New group')),
                  PopupMenuItem(child: Text("New broadcast")),
                  PopupMenuItem(child: Text("Linked devices")),
                  PopupMenuItem(child: Text("Starred messages")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("Settings")),
                ];
              },
            )
          ],
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 255, 255, 255),
            tabs: <Widget>[
              Tab(
                icon: Text("Chats",style:TextStyle(fontSize: 20)),
              ),
              Tab(
                icon: Text("Status",style:TextStyle(fontSize: 20)),
              ),
              Tab(
                icon: Text("Calls",style:TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Chats(),
            ),
            Center(
              child: StatusPage(),
            ),
            Center(
              child: CallPage(),
            ),
          ],
        ),
      ),
    );
  }
}
