// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitter_x_project/screens/home_screen.dart';

class TwitterNotificationsPage extends StatelessWidget {
  const TwitterNotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1546954054685466625/5i54a15u_400x400.jpg'),
            ),
            title: Text('Flutter Demo (@flutter_demo) liked your tweet'),
            subtitle: Text('1 hour ago'),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
            onTap: () {
              // Handle navigation to specific tweet or profile
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
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            child: Text('Mark all as read'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}