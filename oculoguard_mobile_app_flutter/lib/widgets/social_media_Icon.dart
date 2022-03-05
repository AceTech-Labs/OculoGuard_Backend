import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  SocialIcon({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.size,
  }) : super(key: key);

  final IconData icon;
  final Function onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size,
      ),
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
