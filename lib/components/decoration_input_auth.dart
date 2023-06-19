import 'package:flutter/material.dart';
import 'package:flutter_gymapp/_common/my_colors.dart';

InputDecoration getAuthetincationInputDecoration(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: Colors.white,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(color: Colors.black, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide:
          const BorderSide(color: Color.fromARGB(255, 1, 142, 207), width: 2),
    ),
  );
}
