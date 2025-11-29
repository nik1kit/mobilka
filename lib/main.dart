import 'package:flutter/material.dart';
import 'new_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(fontFamily: "Nunito"),
      home: const NewProfileScreen(),
    );
  }
}
