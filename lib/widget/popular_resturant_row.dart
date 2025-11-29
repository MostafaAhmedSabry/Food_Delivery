import 'package:flutter/material.dart';

class PopularRestaurantRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback? onTap;

  const PopularRestaurantRow({super.key, required this.pObj, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        margin: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.grey[200],
        alignment: Alignment.center,
        child: Text(
          pObj["name"] ?? "",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
