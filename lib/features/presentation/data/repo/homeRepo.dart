import 'package:bookly_app/core/error/Failer.dart';
import 'package:bookly_app/features/presentation/data/book_model/book_apis.dart';
import 'package:bookly_app/features/presentation/data/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Item>>> fetchNewestBook();
  Future<Either<Failure, List<BookModel>>> fetchtBook();
}
