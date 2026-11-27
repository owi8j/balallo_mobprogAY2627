import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_font.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final String profileImage;
  final String? postImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    required this.profileImage,
    this.numOfLikes = 0,
    this.postImage,
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
            // PROFILE AND USER INFORMATION
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: AssetImage(profileImage),
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
                          Icon(Icons.public, color: Colors.grey, size: 15.sp),
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
            CustomFont(text: postContent, fontSize: 12.sp, color: Colors.black),

            // POST PHOTO
            if (postImage != null) ...[
              SizedBox(height: 10.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: SizedBox(
                  width: double.infinity,
                  height: 250.h,
                  child: Image.asset(
                    postImage!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 250.h,
                        color: Colors.grey[200],
                        child: const Center(
                          child: Icon(
                            Icons.broken_image,
                            size: 45,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],

            SizedBox(height: 5.h),

            // LIKE, COMMENT AND SHARE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    debugPrint('Liked');
                  },
                  icon: const Icon(Icons.thumb_up, color: FB_DARK_PRIMARY),
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
                  icon: const Icon(Icons.comment, color: FB_DARK_PRIMARY),
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
                  icon: const Icon(Icons.share, color: FB_DARK_PRIMARY),
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
                  backgroundColor: Colors.grey[300],
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 19,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
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
