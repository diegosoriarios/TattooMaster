import 'package:flutter/material.dart';

Widget customTextInput(controller, text, rightIcon, leftIcon) {
  return TextField(
    decoration: InputDecoration(
      prefixIcon: Icon(leftIcon, color: Colors.black),
      suffixIcon: Icon(rightIcon, color: Colors.black),
      hintText: text,
      fillColor: Colors.grey[200],
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(50.0),
        ),
      ),
      focusColor: Colors.black,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: const BorderRadius.all(
          const Radius.circular(50.0),
        ),
      ),
      filled: true,
    ),
    controller: controller,
  );
}