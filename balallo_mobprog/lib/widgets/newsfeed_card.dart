import 'package:flutter/material.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final int numOfLikes;
  final String date;
  final bool hasImage;

  const NewsFeedCard({
    Key? key,
    required this.userName,
    required this.postContent,
    required this.numOfLikes,
    required this.date,
    required this.hasImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Header (Enhancement 2)
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      date,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            
            // Post Content Text
            Text(
              postContent,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),

            // Conditional Image Area (Enhancement 1)
            hasImage
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/icpepncr.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 220,
                    ),
                  )
                : Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: Icon(Icons.image, size: 50, color: Colors.grey),
                    ),
                  ),
            const SizedBox(height: 12),
            const Divider(height: 1),
            const SizedBox(height: 8),

            // Action Buttons (Enhancement 3)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(Icons.thumb_up_alt_outlined, size: 20, color: Colors.grey),
                    const SizedBox(width: 6),
                    Text("$numOfLikes Likes", style: const TextStyle(color: Colors.grey)),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.chat_bubble_outline, size: 20, color: Colors.grey),
                    SizedBox(width: 6),
                    Text("Comments", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}