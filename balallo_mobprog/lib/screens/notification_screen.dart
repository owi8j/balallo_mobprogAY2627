import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/notification.dart';

class NotificationEntry {
  final String name;
  final String post;
  final String description;
  final String timeAgo;
  final bool isUnread;

  const NotificationEntry({
    required this.name,
    required this.post,
    required this.description,
    required this.timeAgo,
    this.isUnread = false,
  });
}

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<NotificationEntry> _notifications = const [
    NotificationEntry(
      name: 'Test',
      post: 'Post',
      description: 'Description',
      timeAgo: 'Just now',
      isUnread: true,
    ),
    NotificationEntry(
      name: 'Cyrus Robles',
      post: 'Kamusta',
      description: 'Liked your post',
      timeAgo: '5 mins ago',
      isUnread: true,
    ),
    NotificationEntry(
      name: 'Roben Juanatas',
      post: 'Kicking off the holiday season with ICpEP-NCR!',
      description: 'Commented: "See you there!"',
      timeAgo: '12 mins ago',
    ),
    NotificationEntry(
      name: 'Khloe Balallo',
      post: 'INF241 Mobile Programming',
      description: 'Shared a new study note',
      timeAgo: '25 mins ago',
    ),
    NotificationEntry(
      name: 'Alyssa Reyes',
      post: 'Flutter ListView Tips',
      description: 'Reacted with heart to your comment',
      timeAgo: '40 mins ago',
    ),
    NotificationEntry(
      name: 'Marcus Santos',
      post: 'Weekend Hackathon',
      description: 'Mentioned you in a post',
      timeAgo: '1 hour ago',
    ),
    NotificationEntry(
      name: 'Sofia Mendoza',
      post: 'UI Design Systems',
      description: 'Started following your updates',
      timeAgo: '2 hours ago',
    ),
    NotificationEntry(
      name: 'Liam Cruz',
      post: 'Dart Null Safety',
      description: 'Liked your photo',
      timeAgo: '3 hours ago',
    ),
    NotificationEntry(
      name: 'Hannah Villanueva',
      post: 'Campus Tech Talk',
      description: 'Replied to your thread',
      timeAgo: '4 hours ago',
    ),
    NotificationEntry(
      name: 'Noah Bautista',
      post: 'State Management with Provider',
      description: 'Bookmarked your post',
      timeAgo: '5 hours ago',
    ),
    NotificationEntry(
      name: 'Chloe Navarro',
      post: 'Morning Coffee & Code',
      description: 'Liked your status',
      timeAgo: '6 hours ago',
    ),
    NotificationEntry(
      name: 'Ethan Ramos',
      post: 'Git Branching Workflow',
      description: 'Commented on your update',
      timeAgo: '8 hours ago',
    ),
    NotificationEntry(
      name: 'Mia Castillo',
      post: 'Mobile UI Polish',
      description: 'Shared your post',
      timeAgo: '10 hours ago',
    ),
    NotificationEntry(
      name: 'Lucas Torres',
      post: 'Lab Activity 2A Demo',
      description: 'Viewed your profile',
      timeAgo: '12 hours ago',
    ),
    NotificationEntry(
      name: 'Zoe Aquino',
      post: 'ICpEP-NCR Event Recap',
      description: 'Tagged you in a photo',
      timeAgo: '1 day ago',
    ),
    NotificationEntry(
      name: 'Gabriel Flores',
      post: 'Widget Tree Architecture',
      description: 'Liked your comment',
      timeAgo: '1 day ago',
    ),
    NotificationEntry(
      name: 'Isabella Morales',
      post: 'AppBar & NavigationBar',
      description: 'Sent you a connection request',
      timeAgo: '2 days ago',
    ),
    NotificationEntry(
      name: 'Nathaniel Mercado',
      post: 'ScreenUtil Responsive Layout',
      description: 'Commented on your post',
      timeAgo: '2 days ago',
    ),
    NotificationEntry(
      name: 'Camille Garcia',
      post: 'Finals Prep Checklist',
      description: 'Liked your post',
      timeAgo: '3 days ago',
    ),
    NotificationEntry(
      name: 'Daniel Soriano',
      post: 'Welcome to the Feed',
      description: 'Welcomed you to the community',
      timeAgo: '4 days ago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: _notifications.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = _notifications[index];
          return NotificationItem(
            name: item.name,
            post: item.post,
            description: item.description,
            timeAgo: item.timeAgo,
            isUnread: item.isUnread,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Opened notification from ${item.name}')),
              );
            },
          );
        },
      ),
    );
  }
}