import 'package:bookly_app/features/presentation/bookDetelis/widget/Bookdeteliesviewbody.dart';
import 'package:bookly_app/features/data/book_model/book_apis.dart';
import 'package:bookly_app/features/data/cubit/cubit/fetch_feuture_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookdeteliesview extends StatefulWidget {
  const Bookdeteliesview({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<Bookdeteliesview> createState() => _BookdeteliesviewState();
}

class _BookdeteliesviewState extends State<Bookdeteliesview> {
  @override
  void initState() {
    BlocProvider.of<FetchFeutureBookCubit>(context).fetcBook();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: const Scaffold(body: Bookdeteliesviewbody()));
  }
}
