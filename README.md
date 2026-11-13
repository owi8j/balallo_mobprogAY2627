# balallo_mobprog

A new Flutter project.

### Balallo, Khloe F.

### 2024-1009571

### INF241

### Laboratoru 0: Discussion

During the setup of my Flutter environment, I encountered a few challenges. At first, my project folder only showed a temporary flutter.create file, so I had to wait for the project to finish creating. I also had difficulty finding the terminal in VS Code because I was still unfamiliar with the interface.

Another problem I encountered was running my first Flutter app because no Android device was connected. When I used the flutter devices command, it only detected Windows, Chrome, and Edge. To fix this, I used flutter emulators to check the available emulators and launched the Pixel 9 Pro using flutter emulators --launch Pixel_9_Pro.

After that, I checked the connected devices again and successfully detected the emulator. I then used flutter run to build and open my application. It took some time to finish building, but the app eventually ran successfully.

Through this experience, I learned how to use basic Flutter commands to check devices, launch emulators, and run applications. I also learned that having the correct tools and settings is important before starting a project. In future activities, I will check my Flutter installation and emulator setup first and use flutter doctor to identify possible problems. This will help me save time and avoid similar issues.

### Laboratoru 1: Discussion

During the implementation of Lab Activity 1A, I encountered challenges organizing the project folder hierarchy and managing relative import paths for our screens, widgets, and constants[cite: 2, 3, 4, 5, 7].

Another challenge was integrating images dynamically into the `NewsFeedCard`[cite: 9]. To solve this, I added a boolean `hasImage` property and used a ternary conditional operator inside the widget tree so that media displays when true and safely omits space when false[cite: 5, 8, 9]. I also replaced standard buttons with widget-based `TextButton.icon` components for the Like, Comment, and Share features[cite: 5, 9].

Through this activity, I learned how to structure a Flutter project using clean design patterns, modular custom widgets, and conditional UI rendering[cite: 2, 4, 5, 6]. In future projects, I will plan my architecture and parameters ahead of time to build scalable apps more efficiently[cite: 2].
