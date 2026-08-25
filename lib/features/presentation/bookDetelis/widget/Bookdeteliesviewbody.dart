// ignore: file_names
// ignore: file_names
import 'package:bookly_app/features/presentation/bookDetelis/widget/BookDetelisSection.dart';
import 'package:bookly_app/features/presentation/bookDetelis/widget/CustomAppBarBookDetails.dart';
import 'package:bookly_app/features/presentation/bookDetelis/widget/sectionView.dart';
import 'package:flutter/material.dart';

class Bookdeteliesviewbody extends StatelessWidget {
  const Bookdeteliesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                BookDetelisSection(),

                Expanded(child: SizedBox(height: 50)),
                SectionView(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
