import 'package:flutter/material.dart';

class ServiceCall extends StatelessWidget {
  final String text;

  static Map<String, String> userPayload = {" name": "Default Service Call"};

  const ServiceCall({Key? key, this.text = "Service Call Widget"})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
