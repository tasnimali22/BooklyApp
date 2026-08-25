import 'package:bookly_app/features/data/cubit/cubit/fetch_feuture_book_cubit.dart';
import 'package:bookly_app/features/presentation/widgets/best_seller_Item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListviewBestitem extends StatelessWidget {
  const ListviewBestitem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeutureBookCubit, FetchFeutureBookState>(
      builder: (context, state) {
        if (state is FetchFeutureBookSucess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.book.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: BestSellerItem(items: state.book[index]),
              );
            },
          );
        } else if (state is FetchFeutureBookFailure) {
          return Text(state.errMassage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
