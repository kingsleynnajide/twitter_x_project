// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_x_project/screens/home_screen.dart';

class TwitterGroupPage extends StatelessWidget {
  const TwitterGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groups'),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1467277675405461505/i5Y5F54T_400x400.jpg'),
            ),
            title: Text('Flutter Community'),
            subtitle: Text('Join the Flutter community to discuss Flutter development'),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
            onTap: () {
              // Handle navigation to specific group page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}