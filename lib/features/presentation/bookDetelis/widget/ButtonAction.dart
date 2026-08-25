import 'package:bookly_app/core/TextStyles.dart';
import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.onPressed,
    this.borderRadius,
    required this.textColor,
  });
  final String text;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final Color textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle17.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
