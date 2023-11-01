// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:twitter_x_project/constants.dart';
import 'package:twitter_x_project/models/tweet.dart';
import 'package:twitter_x_project/widgets/tweet_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Row(
                children: [
                  const SizedBox(
                    width: 60,
                  ),
                  SizedBox(
                    height: 130,
                    child: Lottie.asset("assets/lottie/twitter.json",
                        width: 135,
                        height: 135
                    ),
                  ),
                 const  SizedBox(
                    width: 80,
                  ),
                ],
              ),
              centerTitle: true,
              leading:   Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),

                  Divider(
                    color: Colors.white, //color of divider
                    height: 5, //height spacing of divider
                    thickness: 3, //thickness of divier line
                    indent: 10, //spacing at the start of divider
                    endIndent: 4, //spacing at the end of divider
                  )

                ],
              ),

              bottom: const TabBar(
                unselectedLabelColor: kcontentColor,
                indicatorColor: kprimaryColor,
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: Colors.white,
                tabs: [
                  Tab(text: "For you"),
                  Tab(text: "Following"),
                  Tab(text: "Subscribed"),
                ],
              ),
              backgroundColor: Colors.black,
              
            ),
            
          ],
          body: TabBarView(
            children: [
              ListView.separated(
                itemBuilder: (context, index) => TweetCard(
                  tweet: tweets[index],
                ),
                separatorBuilder: (context, index) => const Divider(
                  color: kcontentColor,
                  thickness: 0.1,
                ),
                itemCount: tweets.length,
              ),
              Container(),
              Container(),
            ],
          ),
        ),
        backgroundColor: Colors.black,

      
      ),
    );
  }
}
