import 'package:flutter/material.dart';

class MenuItemRow extends StatelessWidget {
  final Map mObj;
  final VoidCallback? onTap;

  const MenuItemRow({

    super.key,
    required this.mObj,
    this.onTap,
  });

    Key? key,
    this.name = '',
    this.image = '',
    this.price = 0.0,
    this.onTap, required Map mObj,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // استخراج البيانات من الماب
    final String name = mObj["name"] ?? "";
    final String image = mObj["image"] ?? "";
    final double price = (mObj["price"] ?? 0).toDouble();

    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            image.isNotEmpty
                ? Image.asset(
                    image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  )
                : const SizedBox(width: 60, height: 60),
            const SizedBox(width: 10),

            // النصوص
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text("\$${price.toStringAsFixed(2)}"),
                ],
              ),
            ),

            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
     ),
);
}
}
