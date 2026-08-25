import 'package:bookly_app/core/TextStyles.dart';
import 'package:bookly_app/features/presentation/bookDetelis/widget/BookAction.dart';
import 'package:bookly_app/features/presentation/widgets/best_seller_image.dart';
import 'package:bookly_app/features/presentation/widgets/widgetRateing.dart';
import 'package:flutter/material.dart';

class BookDetelisSection extends StatelessWidget {
  const BookDetelisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         BestSellerImage(image: "",),
        const SizedBox(height: 40),
        Text("The Jungle Book", style: Styles.textStyle30),
        const SizedBox(height: 6),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle17.copyWith(
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 20),
        const WidgetRateing(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BookAction(),
        const SizedBox(height: 37),
      ],
    );
  }
}
