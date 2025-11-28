import 'package:flutter/material.dart';

class MostPopularCell extends StatelessWidget {
  final Map mObj;
  final VoidCallback? onTap;

  const MostPopularCell({super.key, required this.mObj, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.only(right: 15),
        color: Colors.orange[300],
        alignment: Alignment.center,
        child: Text(
          mObj["name"] ?? "",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
