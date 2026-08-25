import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/features/presentation/data/book_model/item.dart';
import 'package:bookly_app/features/presentation/data/repo/homeRepoImpli.dart';
import 'package:equatable/equatable.dart';

part 'fetch_feuture_book_state.dart';

class FetchFeutureBookCubit extends Cubit<FetchFeutureBookState> {
  FetchFeutureBookCubit({required this.homeRepo})
    : super(FetchFeutureBookInitial());
  final HomeRepoImpli homeRepo;

  Future<void> fetcBook() async {
    emit(FetchFeutureBookLooding());
    var result = await homeRepo.fetchNewestBook();

    result.fold(
      (failure) {
        emit(FetchFeutureBookFailure(failure.errMessage));
      },

      (book) {
        emit(FetchFeutureBookSucess(book));
      },
    );
  }
}
