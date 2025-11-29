import 'package:flutter/material.dart';
import 'package:food_delivery/view/on_boarding/on_boarding_view.dart';
import 'package:food_delivery/view/on_boarding/startup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //add line
  const MyApp({super.key});
  //hello
  //this is commit
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Metropolis'),
      home: const StartupView(),
    );
  }
}
