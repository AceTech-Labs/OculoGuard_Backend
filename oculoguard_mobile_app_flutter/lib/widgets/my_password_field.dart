import 'package:flutter/material.dart';
import '../constants.dart';

class MyPasswordField extends StatefulWidget {
  MyPasswordField({
    Key? key,
    required this.borderColor,
    required this.controller,
    required this.isPasswordVisible,
    required this.onTap,
    required this.name,
  }) : super(key: key);

  final bool isPasswordVisible;
  final Function onTap;
  final TextEditingController controller;
  final String name;
  Color borderColor;

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        onTap: () {
          setState(() {
            widget.borderColor = Colors.white;
          });
        },
        controller: widget.controller,
        style: kBodyText.copyWith(
          color: Colors.white,
        ),
        obscureText: widget.isPasswordVisible,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                widget.onTap();
              },
              icon: Icon(
                widget.isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.grey,
              ),
            ),
          ),
          contentPadding: const EdgeInsets.all(20),
          hintText: widget.name,
          hintStyle: kBodyText,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.borderColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: widget.borderColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
