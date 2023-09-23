

import 'package:flutter/material.dart';

SnackBar createSnackBar(String message) {
  return SnackBar(
    content: Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 18, // You can adjust the font size here
          color: Colors.black,
        ),
      ),
    ),
    duration: Duration(seconds: 2), // Adjust the duration as needed
  );
}
