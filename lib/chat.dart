import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.message),backgroundColor: Colors.teal),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 8.0,),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://1fid.com/wp-content/uploads/2022/06/Twitter-profile-picture-1024x1022.jpg'),
            ),
            title: Text('Tom',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('message'),
            trailing: Text('3.11pm',style: TextStyle(fontSize: 13),),
          ),
        );
      },),
    );
  }
}
