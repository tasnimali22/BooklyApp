part of 'fetch_feuture_book_cubit.dart';

sealed class FetchFeutureBookState extends Equatable {
  const FetchFeutureBookState();

  @override
  List<Object> get props => [];
}

final class FetchFeutureBookInitial extends FetchFeutureBookState {}

final class FetchFeutureBookLooding extends FetchFeutureBookState {}

final class FetchFeutureBookFailure extends FetchFeutureBookState {
  final String errMassage;

  const FetchFeutureBookFailure(this.errMassage);
}

final class FetchFeutureBookSucess extends FetchFeutureBookState {
  final List<Item> book;

  const FetchFeutureBookSucess(this.book);
}
