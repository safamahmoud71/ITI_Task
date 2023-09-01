import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final Function()? onPressed;
  final double size;
  const CustomIconButton({
    required this.icon,
    this.size=50,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,

      ),
    );
  }
}

