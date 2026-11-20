import 'package:flutter/material.dart';
import 'widgets/newsfeed_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook UI Replication',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          NewsFeedCard(
            userName: "Balallo",
            postContent: "Representing ICpEP.NCER!",
            numOfLikes: 45,
            date: "1 hr ago",
            hasImage: true,
          ),
          NewsFeedCard(
            userName: "Balallo",
            postContent: "Exploring widget structures and asset handling.",
            numOfLikes: 12,
            date: "3 hrs ago",
            hasImage: false,
          ),
        ],
      ),
    );
  }
}
