import 'package:flutter/material.dart';
import '../widgets/newsfeed_card.dart';

class PostData {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;

  const PostData({
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    required this.hasImage,
  });
}

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  final List<PostData> _posts = const [
    PostData(
      userName: 'Cyrus Robles',
      postContent: 'Kamusta',
      date: 'October 11',
      numOfLikes: 100,
      hasImage: false,
    ),
    PostData(
      userName: 'Roben Juanatas',
      postContent: 'Kicking off the holiday season with ICpEP-NCR!',
      date: 'December 2',
      numOfLikes: 245,
      hasImage: true,
    ),
    PostData(
      userName: 'Khloe Balallo',
      postContent: 'Building Lab Activity 2A list widgets in Flutter.',
      date: 'December 4',
      numOfLikes: 88,
      hasImage: false,
    ),
    PostData(
      userName: 'Alyssa Reyes',
      postContent: 'Testing dynamic post cards with optional images.',
      date: 'December 6',
      numOfLikes: 134,
      hasImage: true,
    ),
    PostData(
      userName: 'Marcus Santos',
      postContent: 'Responsive layouts with flutter_screenutil are super handy.',
      date: 'December 8',
      numOfLikes: 64,
      hasImage: false,
    ),
    PostData(
      userName: 'Sofia Mendoza',
      postContent: 'Customizing color constants in constants.dart.',
      date: 'December 10',
      numOfLikes: 152,
      hasImage: true,
    ),
    PostData(
      userName: 'Liam Cruz',
      postContent: 'Added 20 notifications to NotificationScreen.',
      date: 'December 12',
      numOfLikes: 93,
      hasImage: false,
    ),
    PostData(
      userName: 'Hannah Villanueva',
      postContent: 'Dynamic AppBar titles update smoothly per tab.',
      date: 'December 14',
      numOfLikes: 119,
      hasImage: false,
    ),
    PostData(
      userName: 'Noah Bautista',
      postContent: 'Added extra BottomNavigationBarItems for more views.',
      date: 'December 16',
      numOfLikes: 176,
      hasImage: true,
    ),
    PostData(
      userName: 'Chloe Navarro',
      postContent: 'Almost ready to push Lab Activity 2 to GitHub!',
      date: 'December 18',
      numOfLikes: 210,
      hasImage: false,
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
          hasImage: post.hasImage,
        );
      },
    );
  }
}