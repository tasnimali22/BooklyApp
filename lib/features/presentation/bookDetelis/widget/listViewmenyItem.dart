import 'package:bookly_app/features/presentation/data/cubit/cubit/fetch_feuture_book_cubit.dart';
import 'package:bookly_app/features/presentation/widgets/best_seller_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewmenyItem extends StatelessWidget {
  const ListViewmenyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,

      child: BlocBuilder<FetchFeutureBookCubit, FetchFeutureBookState>(
        builder: (context, state) {

          if (state is FetchFeutureBookSucess) {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: state.book.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child:  BestSellerImage(image: state.book[index].volumeInfo?.imageLinks?.thumbnail ??
                "",),
        );
      },
    );
          }else if (state is FetchFeutureBookFailure){
               return Text(state.errMassage);
        } else {
          return Center(child: CircularProgressIndicator(),);
        }
        },
      ),
    );
  }
}
