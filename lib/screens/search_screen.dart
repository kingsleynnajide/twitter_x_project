// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitter_x_project/screens/home_screen.dart';

class TwitterSearchPage extends StatefulWidget {
  const TwitterSearchPage({Key? key}) : super(key: key);

  @override
  State<TwitterSearchPage> createState() => _TwitterSearchPageState();
}

class _TwitterSearchPageState extends State<TwitterSearchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        clipBehavior: Clip.none,
        title: SizedBox(
          width: 300,
          height: 40,
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              fillColor: Colors.grey[800],
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white70),
                borderRadius: BorderRadius.all(Radius.circular(50)),
                
              ),
              hintText: 'Search X', hintStyle: TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
              border: InputBorder.none,
              focusColor: Colors.white70
              
            ),
          ),
        ),
        centerTitle: true,
        leading: CircleAvatar(radius: 20,
              backgroundImage: AssetImage('assets/images/twitter_profile.jpg'),
            ),
            backgroundColor: Colors.black,
            actions: [Center(child: Icon(Icons.settings))],

            
      ),
    


      body: Padding(
        padding: EdgeInsets.only(left: 25,),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              height: 0,
              color: Colors.white,
            ),
            Text('Trends for You', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white,
              ),
              
              ),

                             ],
              )
          
        ),
         );
      
      
    
  }
}