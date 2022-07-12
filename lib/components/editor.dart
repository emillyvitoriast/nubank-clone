import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData? icon;

  Editor({
    required this.controller,
    required this.label,
    required this.hint,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35, left: 15),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: icon != null ? Icon(icon) : null,
            labelText: label,
            hintText: hint,
            ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
