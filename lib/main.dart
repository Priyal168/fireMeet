// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/video_call_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Zoom Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromRGBO(36, 36, 36, 1),
        ),
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          VideoCallScreen.id: (context) => VideoCallScreen(),
        });
  }
}
