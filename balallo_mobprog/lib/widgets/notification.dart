import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_font.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    this.timeAgo,
    this.isUnread = false,
    this.onTap,
  });

  final String name;
  final String post;
  final String description;
  final String? timeAgo;
  final bool isUnread;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: isUnread ? FB_LIGHT_PRIMARY.withOpacity(0.15) : Colors.white,
        padding: EdgeInsets.all(ScreenUtil().setSp(15)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: ScreenUtil().setSp(24),
              backgroundColor: FB_PRIMARY.withOpacity(0.15),
              child: Icon(
                Icons.person,
                size: ScreenUtil().setSp(30),
                color: FB_PRIMARY,
              ),
            ),
            SizedBox(width: ScreenUtil().setWidth(12)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomFont(
                    text: name,
                    fontSize: ScreenUtil().setSp(18),
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(height: ScreenUtil().setHeight(2)),
                  CustomFont(
                    text: 'Posted: $post',
                    fontSize: ScreenUtil().setSp(13),
                    color: Colors.black87,
                  ),
                  SizedBox(height: ScreenUtil().setHeight(2)),
                  CustomFont(
                    text: description,
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.black54,
                    fontStyle: FontStyle.italic,
                  ),
                  if (timeAgo != null) ...[
                    SizedBox(height: ScreenUtil().setHeight(4)),
                    CustomFont(
                      text: timeAgo!,
                      fontSize: ScreenUtil().setSp(11),
                      color: FB_SECONDARY,
                    ),
                  ],
                ],
              ),
            ),
            Icon(
              Icons.more_horiz,
              size: ScreenUtil().setSp(20),
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
