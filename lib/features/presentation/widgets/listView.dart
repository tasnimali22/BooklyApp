import 'package:bookly_app/features/presentation/data/cubit/cubit/fetch_feuture_book_cubit.dart';
import 'package:bookly_app/features/presentation/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeutureBookCubit, FetchFeutureBookState>(
      builder: (context, state) {
        if (state is FetchFeutureBookSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.book.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomContainerImage(
                    image:
                        state.book[index].volumeInfo?.imageLinks?.thumbnail ??
                        "",
                  ),
                );
              },
            ),
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
