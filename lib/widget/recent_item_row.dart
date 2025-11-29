import 'package:flutter/material.dart';

class RecentItemRow extends StatelessWidget {
  final Map rObj;
  final VoidCallback? onTap;

  const RecentItemRow({super.key, required this.rObj, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.green[200],
        alignment: Alignment.center,
        child: Text(
          rObj["name"] ?? "",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
