import 'package:bookly_app/features/presentation/bookDetelis/bookDeteliesview.dart';
import 'package:bookly_app/features/presentation/data/cubit/cubit/fetch_feuture_book_cubit.dart';
import 'package:bookly_app/features/presentation/home/HomeView.dart';
import 'package:bookly_app/features/search/search.dart';
import 'package:bookly_app/features/views/Splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/Homeview';
  static const String kSearchView = '/Searchview';
  static const String kBookDeteliesView = '/BookDeteliesview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const Splash();
        },
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const Homeview()),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kBookDeteliesView,
        builder: (context, state) => BlocBuilder<FetchFeutureBookCubit, FetchFeutureBookState>(
          builder: (context, state) {
            return const Bookdeteliesview(
              
            );
          },
        ),
      ),
    ],
  );
}
