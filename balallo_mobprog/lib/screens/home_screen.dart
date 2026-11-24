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

  static const String _appName = 'BalalloFeed'; // Change to your own app name

  final List<String> _titles = const [
    _appName,
    'Notifications',
    'Explore',
    'Profile',
  ];

  late final List<Widget> _pages = [
    const NewsFeedScreen(),
    const NotificationScreen(),
    const Center(
      child: CustomFont(
        text: 'Explore & Trending Topics',
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Center(
      child: CustomFont(
        text: 'Khloe Balallo — Profile',
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

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
