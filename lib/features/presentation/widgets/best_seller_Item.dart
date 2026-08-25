import 'package:bookly_app/features/presentation/AppRouter.dart';
import 'package:bookly_app/contants/constant.dart';
import 'package:bookly_app/features/data/book_model/item.dart';
import 'package:bookly_app/features/presentation/widgets/best_seller_image.dart';
import 'package:bookly_app/features/presentation/widgets/widgetRateing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/TextStyles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.items});
  final Item items;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDeteliesView);
      },
      child: Row(
        children: [
          BestSellerImage(image: items.volumeInfo?.imageLinks?.thumbnail ?? ""),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 5,
                    child: Text(
                      items.volumeInfo?.title ?? "",
                      style: Styles.textStyle19.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    items.volumeInfo?.authors![0] ?? "",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(r"199$", style: Styles.textStyle19),
                      Spacer(),
                      WidgetRateing(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
