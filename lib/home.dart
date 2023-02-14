import 'package:flutter/material.dart';
import 'package:whatssapp/Calls.dart';
import 'package:whatssapp/chat.dart';
import 'package:whatssapp/status.dart';

class Home extends StatefulWidget {
   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(

        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text('WhatsApp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              actions: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.more_vert),
                ),
              ],
              bottom: const TabBar(
                tabs: [
               Tab(text: 'Chat'),
               Tab(text: 'Status'),
               Tab(text: 'Calls')
                ],
                indicatorColor: Colors.white,
              ),
            ),

          body:  const TabBarView(

            children: [
              Chat(),
              Status(),
              Calls()

            ],),
    ),
      );
  }
}
