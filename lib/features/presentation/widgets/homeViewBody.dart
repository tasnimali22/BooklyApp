import "package:bookly_app/features/presentation/widgets/ListView_bestItem.dart";
import "package:bookly_app/features/presentation/widgets/custom_app_bar.dart";
import "package:bookly_app/features/presentation/widgets/listView.dart";
import "package:flutter/material.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomAppBar(),
                CustomListView(),
                Text(
                  textAlign: TextAlign.start,
                  "Best Seller",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SliverFillRemaining(child: ListviewBestitem()),
        ],
      ),
    );
  }
}
