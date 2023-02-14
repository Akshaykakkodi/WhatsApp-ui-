import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.phone_outlined),backgroundColor: Colors.teal),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://cdn.mos.cms.futurecdn.net/LSEqyLE9hzxbk5iotqdSyN-1200-80.jpg'),
            ),
            title: Text('Mr Bean'),
            subtitle: Text('Today 2.45pm'),
            trailing: Icon(Icons.phone_outlined),
          );
        },),
    );
  }
}
