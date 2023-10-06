import 'package:flutter/material.dart';
import 'package:profileui/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      theme: ThemeData(useMaterial3: true),
      home: HomePage(),
    );
  }
}
