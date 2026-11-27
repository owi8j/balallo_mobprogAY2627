import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_font.dart';
import 'newsfeed_screen.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const String _appName = 'BalalloFeed';

  final List<String> _titles = const [
    _appName,
    'Notifications',
    'Explore',
    'Profile',
  ];

  late final List<Widget> _pages = [
    const NewsFeedScreen(),
    const NotificationScreen(),

    // EXPLORE SECTION
    const Center(
      child: CustomFont(
        text: 'Explore & Trending Topics',
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),

    // KHLOE'S PROFILE SECTION
    _buildProfile(),
  ];

  Widget _buildProfile() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // COVER PHOTO
          Container(
            height: 150.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [FB_PRIMARY, Color(0xFF8DA9C4), Color(0xFFE5C9B6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Transform.translate(
              offset: Offset(0, -45.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // PROFILE PICTURE
                  CircleAvatar(
                    radius: 52.r,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 47.r,
                      backgroundImage: const AssetImage(
                        'assets/images/profiles/owl.jpg',
                      ),
                    ),
                  ),

                  SizedBox(height: 8.h),

                  // NAME
                  Text(
                    'Khloe Balallo',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 5.h),

                  // BIO
                  Text(
                    'BS Information Technology Student 💻',
                    style: TextStyle(fontSize: 13.sp, color: Colors.black87),
                  ),

                  SizedBox(height: 10.h),

                  Text(
                    'Creating memories, learning new things, and enjoying the little moments. ♡',
                    style: TextStyle(fontSize: 13.sp, color: Colors.black87),
                  ),

                  SizedBox(height: 18.h),

                  // PROFILE STATISTICS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStat('10', 'Posts'),
                      _buildStat('256', 'Friends'),
                      _buildStat('180', 'Following'),
                    ],
                  ),

                  SizedBox(height: 18.h),

                  // PROFILE BUTTONS
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Edit Profile coming soon!'),
                              ),
                            );
                          },
                          icon: const Icon(Icons.edit, size: 18),
                          label: const Text('Edit Profile'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: FB_PRIMARY,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Share Profile coming soon!'),
                              ),
                            );
                          },
                          icon: const Icon(Icons.share, size: 18),
                          label: const Text('Share Profile'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: FB_PRIMARY,
                            padding: EdgeInsets.symmetric(vertical: 12.h),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 22.h),

                  const Divider(),

                  // POSTS SECTION
                  Text(
                    'Posts',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 12.h),

                  // KHLOE'S POST
                  Card(
                    elevation: 1,
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/profiles/owl.jpg',
                            ),
                          ),
                          title: const Text(
                            'Khloe Balallo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text('November 22'),
                          trailing: const Icon(Icons.more_horiz),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: const Text(
                            'Slow mornings, good music, and a little sunshine. 🌷',
                          ),
                        ),

                        SizedBox(height: 12.h),

                        Image.asset(
                          'assets/images/posts/post3.jpg',
                          width: double.infinity,
                          height: 240.h,
                          fit: BoxFit.cover,
                        ),

                        Padding(
                          padding: EdgeInsets.all(12.w),
                          child: Row(
                            children: const [
                              Icon(Icons.thumb_up, color: FB_PRIMARY),
                              SizedBox(width: 6),
                              Text('188 likes'),
                              Spacer(),
                              Text('Like  •  Comment  •  Share'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 3.h),
        Text(
          label,
          style: TextStyle(fontSize: 12.sp, color: Colors.grey[700]),
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FB_PRIMARY,
        title: CustomFont(
          text: _titles[_selectedIndex],
          fontSize: 20.sp,
          color: FB_TEXT_COLOR_WHITE,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: FB_PRIMARY,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
