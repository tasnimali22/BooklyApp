import 'package:bookly_app/core/TextStyles.dart';
import 'package:bookly_app/features/presentation/bookDetelis/widget/listViewmenyItem.dart';
import 'package:flutter/material.dart';

class SectionView extends StatelessWidget {
  const SectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Tou can also like", style: Styles.textStyle14),
        SizedBox(height: 20),
        ListViewmenyItem(),
      ],
    );
  }
}
