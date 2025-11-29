import 'package:flutter/material.dart';

class ViewAllTitleRow extends StatelessWidget {
  final String title;
  final VoidCallback? onView; // اتأكدنا الاسم هنا يطابق HomeView

  const ViewAllTitleRow({Key? key, this.title = "Title", this.onView})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(onPressed: onView, child: const Text("View All")),
      ],
    );
  }
}
