// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:twitter_x_project/screens/home_screen.dart';

class TwitterSearchPage extends StatefulWidget {
  const TwitterSearchPage({Key? key}) : super(key: key);

  @override
  State<TwitterSearchPage> createState() => _TwitterSearchPageState();
}

class _TwitterSearchPageState extends State<TwitterSearchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        clipBehavior: Clip.none,
        title: SizedBox(
          width: 280,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[900],
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              hintText: 'Search X',
                contentPadding: EdgeInsets.all(8),
                hintStyle: TextStyle(
                color: Colors.white70,
                fontSize: 15,
              ),
              border: InputBorder.none,
              focusColor: Colors.white70
            ),
          ),
        ),
        centerTitle: true,
        leading: CircleAvatar(
          radius: 2,
          backgroundColor: Color(0XFFEEEEFF),
          child: CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(
              "assets/images/twitter_profile.jpg",
            ),
            backgroundColor: Color(0XFFEEEEFF),
          ),
        ),
            backgroundColor: Colors.black,
            actions: [SizedBox(
              width: 60,
              child: Icon(Icons.settings_outlined,
                size: 30,
                color: Colors.white,
              ),
            )],

            
      ),
    


      body: Padding(
        padding: EdgeInsets.only(left: 25,),
        child: ListView(

            children: [
              Divider(
                height: 1,
                color: Colors.white,
              ),
              Text('Trends for You',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
                ),
                ),
              SizedBox(height: 30,),

              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 347,
                        child: Row(
                          children: [
                            Text("Trending in Nigeria",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 15
                              ),
                            ),

                            SizedBox(width: 155,),
                            SizedBox(child: Icon(Icons.more_vert,
                              color: Colors.white70
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Align(alignment: Alignment.centerLeft,
                        child: SizedBox(
                      
                          child: Text("Mr Ibu",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      SizedBox(

                        child: Text("14.1k posts",

                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 10
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: Text("Trending in Nigeria",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 15
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("SportyBet Is Broke",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("56.5k posts",

                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: Text("Trending in Nigeria",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 15
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("Natasha",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("18.7k posts",

                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: Text("Trending in Nigeria",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 15
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("Happie Boys",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("13.3k posts",

                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: Text("Sports.Trend",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 15
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("Goat",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("20.8k posts",

                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: Text("Trending in Nigeria",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 15
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("Covid-19",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("22.9k posts",

                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: Text("Trending in Nigeria",
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 15
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("Osofia",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    width: 350,
                    child: Text("266k posts",

                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10
                      ),
                    ),
                  )
                ],
              ),
                               ],
                ),
        ),


      backgroundColor: Colors.black,
         );
      
      
    
  }
}

