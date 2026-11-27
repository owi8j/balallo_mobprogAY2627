# balallo_mobprog

A new Flutter project.

### Balallo, Khloe F.

### 2024-1009571

### INF241

## Lab Activity 2: discussion

To implement the 10 posts and 20 notifications efficiently, I organized the data into structured models (`PostData` and `NotificationEntry`) and rendered them using scrollable list builders (`ListView.builder` and `ListView.separated`) paired with reusable widgets (`NewsFeedCard` and `NotificationItem`)[cite: 2, 3]. Using list builders avoids duplicating repetitive widget code and keeps scrolling smooth, while `flutter_screenutil` helps keep font sizes, spacing, and card dimensions responsive across different screen sizes.

I accomplished the enhancements by expanding the feed to 10 posts and the notification list to 20 items, adding dynamic fields to each post for reaction or like counts, post dates, and optional image placeholders. In `HomeScreen`, I tracked the selected tab index to update the `AppBar` title dynamically and added extra `BottomNavigationBarItem` entries with `BottomNavigationBarType.fixed` so users can switch cleanly between views[cite: 5]. I also gave the app its own social media name and customized the color palette in `constants.dart`.

One of the main challenges I faced was fixing broken relative import paths and a leading slash in `main.dart` after reorganizing files inside `balallo_mobprog/lib/`, which I resolved by aligning all imports with `lib/screens/` and `lib/widgets/`[cite: 1, 2, 3]. Another challenge was resolving naming mismatches between `FB_*` constants in `constants.dart` and widget references or class names, which I fixed by standardizing the constant names and matching the widget imports and constructors so the project compiled without errors.
