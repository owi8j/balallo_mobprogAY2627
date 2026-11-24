
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_font.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.w),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // USER PROFILE AND INFORMATION
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundImage:
                      const AssetImage('assets/images/owl.jpg'),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: userName,
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          CustomFont(
                            text: date,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 3.w),
                          Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: 15.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: 10.h),

            // POST CONTENT
            CustomFont(
              text: postContent,
              fontSize: 12.sp,
              color: Colors.black,
            ),

            SizedBox(height: 10.h),

              // ENHANCEMENT 1: DISPLAY NEWSFEED IMAGE
                if (hasImage)
                  SizedBox(
                    width: double.infinity,
                    height: 250.h,
                    child: Image.asset(
                      'assets/images/owl.jpg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Text('Image not found'),
                        );
                      },
                    ),
                  ),
            SizedBox(height: 5.h),

            // LIKE, COMMENT AND SHARE BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    debugPrint('Liked');
                  },
                  icon: const Icon(
                    Icons.thumb_up,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomFont(
                    text: numOfLikes.toString(),
                    fontSize: 12.sp,
                    color: FB_DARK_PRIMARY,
                  ),
                ),

                TextButton.icon(
                  onPressed: () {
                    debugPrint('Comment pressed');
                  },
                  icon: const Icon(
                    Icons.comment,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomFont(
                    text: 'Comment',
                    fontSize: 12.sp,
                    color: FB_DARK_PRIMARY,
                  ),
                ),

                TextButton.icon(
                  onPressed: () {
                    debugPrint('Share pressed');
                  },
                  icon: const Icon(
                    Icons.share,
                    color: FB_DARK_PRIMARY,
                  ),
                  label: CustomFont(
                    text: 'Share',
                    fontSize: 12.sp,
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),

            // COMMENT INPUT
            Row(
              children: [
                CircleAvatar(
                  radius: 16.r,
                  backgroundImage:
                      const AssetImage('assets/images/owl.jpg'),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                    ),
                    alignment: Alignment.centerLeft,
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: CustomFont(
                      text: 'Write a comment...',
                      fontSize: 11.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            CustomFont(
              text: 'View comments',
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
