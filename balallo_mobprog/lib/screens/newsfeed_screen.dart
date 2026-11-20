import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsFeedCard(
          userName: 'Cyrus Robles',
          postContent: 'Kamusta',
          numOfLikes: 100,
          date: 'October 11',
          hasImage: false,
        ),
        NewsFeedCard(
          userName: 'Roben Juanatas',
          postContent: 'Kicking off the holiday season with ICPEP-NCR!',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 2',
        ),
      ],
    );
  }
}