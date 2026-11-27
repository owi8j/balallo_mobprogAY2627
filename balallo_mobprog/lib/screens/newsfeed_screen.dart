import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class PostData {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final String profileImage;
  final String? postImage;

  const PostData({
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    required this.profileImage,
    this.postImage,
  });
}

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  static const List<PostData> _posts = [
    PostData(
      userName: 'Cyrus Robles',
      postContent: 'Coffee first, responsibilities later. ☕',
      date: 'November 20',
      numOfLikes: 100,
      profileImage: 'assets/images/profiles/cat.jpg',
      postImage: 'assets/images/posts/post1.jpg',
    ),
    PostData(
      userName: 'Roben Juanatas',
      postContent: 'Kicking off the holiday season with friends! 🎄',
      date: 'November 21',
      numOfLikes: 245,
      profileImage: 'assets/images/profiles/dog.jpg',
      postImage: 'assets/images/posts/post2.jpg',
    ),
    PostData(
      userName: 'Khloe Balallo',
      postContent: 'Slow mornings, good music, and a little sunshine. 🌷',
      date: 'November 22',
      numOfLikes: 188,
      profileImage: 'assets/images/profiles/owl.jpg',
      postImage: 'assets/images/posts/post3.jpg',
    ),
    PostData(
      userName: 'Alyssa Reyes',
      postContent: 'Found my new favorite café! Definitely coming back. 🤎',
      date: 'November 22',
      numOfLikes: 134,
      profileImage: 'assets/images/profiles/fox.jpg',
      postImage: 'assets/images/posts/post4.jpg',
    ),
    PostData(
      userName: 'Marcus Santos',
      postContent: 'Weekend plans: rest, recharge, and spend time outdoors.',
      date: 'November 23',
      numOfLikes: 64,
      profileImage: 'assets/images/profiles/bear.jpg',
      postImage: 'assets/images/posts/post5.jpg',
    ),
    PostData(
      userName: 'Sofia Mendoza',
      postContent: 'Somewhere between the sunset and the city lights. 🌅',
      date: 'November 23',
      numOfLikes: 152,
      profileImage: 'assets/images/profiles/bird.jpg',
      postImage: 'assets/images/posts/post6.jpg',
    ),
    PostData(
      userName: 'Liam Cruz',
      postContent: 'Finally finished my project for this week. Time to relax!',
      date: 'November 24',
      numOfLikes: 93,
      profileImage: 'assets/images/profiles/panda.jpg',
      postImage: 'assets/images/posts/post7.jpg',
    ),
    PostData(
      userName: 'Hannah Villanueva',
      postContent: 'Flowers make everything a little better. 🌸',
      date: 'November 24',
      numOfLikes: 119,
      profileImage: 'assets/images/profiles/rabbit.jpg',
      postImage: 'assets/images/posts/post8.jpg',
    ),
    PostData(
      userName: 'Noah Bautista',
      postContent: 'Collecting memories and chasing new places. ✈️',
      date: 'November 25',
      numOfLikes: 176,
      profileImage: 'assets/images/profiles/deer.jpg',
      postImage: 'assets/images/posts/post9.jpg',
    ),
    PostData(
      userName: 'Chloe Navarro',
      postContent:
          'Little things that made my week better. Feeling grateful! ♡',
      date: 'November 26',
      numOfLikes: 210,
      profileImage: 'assets/images/profiles/hamster.jpg',
      postImage: 'assets/images/posts/post10.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];

        return NewsFeedCard(
          userName: post.userName,
          postContent: post.postContent,
          date: post.date,
          numOfLikes: post.numOfLikes,
          profileImage: post.profileImage,
          postImage: post.postImage,
        );
      },
    );
  }
}
