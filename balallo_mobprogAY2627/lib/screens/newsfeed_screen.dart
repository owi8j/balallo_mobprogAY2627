import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Khloe Balallo',
          postContent: 'Kamusta',
          numOfLikes: 100,
          date: 'October 11',
        ),
        NewsFeedCard(
          userName: 'Roben Juanatas',
          postContent: 'Kicking off the holiday season with JCpEP-NCR!',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 2',
        ),
      ],
    );
  }
}
