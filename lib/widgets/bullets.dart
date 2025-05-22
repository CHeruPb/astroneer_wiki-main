import 'package:flutter/material.dart';

Widget bullet(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text('• ', style: TextStyle(fontSize: 16)),
      Expanded(child: Text(text)),
    ],
  );
}

Widget bulletWithIcon(String assetPath, String text) {
  return Row(
    children: [
      Image.asset(assetPath, width: 24, height: 24),
      const SizedBox(width: 8),
      Expanded(child: Text(text)),
    ],
  );
}