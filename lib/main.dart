import 'package:flutter/material.dart';
import 'package:spotify_project/screen/aritist_detail_screen.dart';
import 'package:spotify_project/screen/aritist_screen.dart';
import 'package:spotify_project/screen/home_screen.dart';
import 'package:spotify_project/screen/option_screen.dart';
import 'package:spotify_project/screen/play_audio_screen.dart';
import 'package:spotify_project/theme/custom_theme.dart';

Future<void> main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeDataClass.darkTheme,
      darkTheme: ThemeDataClass.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 27, 27),
        body: OptionScreen(),
      ),
    );
  }
}
