import 'package:bookly_app/AppRouter.dart';
import 'package:bookly_app/contants/constant.dart';
import 'package:bookly_app/features/presentation/data/cubit/cubit/fetch_feuture_book_cubit.dart';
import 'package:bookly_app/features/presentation/data/repo/homeRepoImpli.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyBookly());
}

class MyBookly extends StatelessWidget {
  const MyBookly({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FetchFeutureBookCubit(homeRepo: HomeRepoImpli())..fetcBook(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
