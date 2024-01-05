import 'package:flutter/material.dart';
import 'package:meeting_app/video_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meeting App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const LoginVideo(),
    );
  }
}

