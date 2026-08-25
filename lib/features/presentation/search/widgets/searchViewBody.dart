import 'package:bookly_app/features/presentation/search/widgets/customTextFiled.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(8.0), child: CustomTextFild());
  }
}
