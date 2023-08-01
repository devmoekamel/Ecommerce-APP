import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';

class Textinput extends StatelessWidget {
  String? hint;
  Function(String)? onChanged;
  Color color;
  TextInputType?textInputType;
  Textinput({this.hint, this.onChanged, required this.color,this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: TextField(
        keyboardType: textInputType,
        style: TextStyle(color: color),
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
