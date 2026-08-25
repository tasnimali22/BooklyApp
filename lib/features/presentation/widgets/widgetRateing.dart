import 'package:bookly_app/core/TextStyles.dart';
import 'package:flutter/material.dart';

class WidgetRateing extends StatelessWidget {
  const WidgetRateing({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, 
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(Icons.star, color: Colors.amber),
        SizedBox(width: 5),
        Text("4.5", style: Styles.textStyle14),
        Text("4.5", style: Styles.textStyle14),
      ],
    );
  }
}
