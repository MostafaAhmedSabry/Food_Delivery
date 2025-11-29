import 'package:flutter/material.dart';

class CategoryCell extends StatelessWidget {
  final Map cObj;
  final VoidCallback? onTap;

  const CategoryCell({super.key, required this.cObj, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(cObj["image"] ?? "", width: 60, height: 60),
          const SizedBox(height: 5),
          Text(
            cObj["name"] ?? "",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
