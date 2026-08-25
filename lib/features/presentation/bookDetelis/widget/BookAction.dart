import 'package:bookly_app/features/presentation/bookDetelis/widget/ButtonAction.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ButtonAction(
          text: r'19$',
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          backgroundColor: Colors.white,
        ),
        ButtonAction(
          text: 'Free ',
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          backgroundColor: Color(0xffEF8262),
          textColor: Colors.white,
        ),
      ],
    );
  }
}
