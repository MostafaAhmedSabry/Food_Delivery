import 'package:flutter/material.dart';

class MyOrderView extends StatelessWidget {
  const MyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Orders")),
      body: const Center(
        child: Text("My Order Page"),
     ),
);
}
}