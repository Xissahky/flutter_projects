import 'package:flutter/material.dart';

import 'screens/main_screen.dart';
import 'screens/novel_details.dart';
import 'screens/new_chapter_page.dart';
import 'screens/notifications.dart';
import 'screens/profile_page.dart';
import 'screens/sign_in_page.dart';
import 'screens/sign_up_page.dart';

void main() {
  runApp(const NovelApp());
}

class NovelApp extends StatelessWidget {
  const NovelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Novel App',
      theme: ThemeData(useMaterial3: true),
      home: const MainScreen(),
    );
  }
}
