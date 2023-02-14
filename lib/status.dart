import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.camera_alt_outlined),backgroundColor: Colors.teal),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://www.meme-arsenal.com/memes/2774744123cafbceb2c1f2aa14c65d82.jpg'),
          ),
          title: Text('Jerry'),
          subtitle: Text('Today 2.45pm'),
        );
      },),
    );
  }
}
