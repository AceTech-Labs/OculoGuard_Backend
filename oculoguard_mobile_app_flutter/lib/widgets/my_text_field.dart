import 'package:flutter/material.dart';

import '../constants.dart';

class MyTextField extends StatefulWidget {
  MyTextField({
    Key? key,
    required this.boderColor,
    required this.hintText,
    required this.inputType,
    required this.controller,
  }) : super(key: key);
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  Color boderColor;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        onTap: () => setState(() {
          widget.boderColor = Colors.white;
        }),
        controller: widget.controller,
        style: kBodyText.copyWith(color: Colors.white),
        keyboardType: widget.inputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: widget.hintText,
          hintStyle: kBodyText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.boderColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.boderColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
