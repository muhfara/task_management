import 'package:flutter/material.dart';

import '../constants/box_size.dart';
import '../styles/font_styles.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.borderColor,
    this.textColor,
  });

  final VoidCallback onPressed;
  final String text;
  final double? width, height;
  final Color? borderColor, textColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BoxSize.radius12),
        ),
        side: BorderSide(color: borderColor ?? Colors.white),
        minimumSize: Size(
          width ?? BoxSize.proportionalScreenWidth(90),
          height ?? BoxSize.proportionalScreenHeight(8),
        ),
      ),
      child: Text(
        text,
        style: FontStyles.poppinsBold(
          size: 18,
          color: textColor ?? Colors.white,
        ),
        maxLines: 1,
        overflow: TextOverflow.fade,
      ),
    );
  }
}
