import 'package:bookly_app/core/apiServies/apiServices.dart';
import 'package:bookly_app/core/error/Failer.dart';
import 'package:bookly_app/features/presentation/data/book_model/book_apis.dart';
import 'package:bookly_app/features/presentation/data/book_model/item.dart';
import 'package:bookly_app/features/presentation/data/repo/homeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpli implements HomeRepo {
  final ApiServices apiServices;

  // HomeRepoImpli(this.apiServices);
  HomeRepoImpli() : apiServices = ApiServices();

  @override
  Future<Either<Failure, List<Item>>> fetchNewestBook() async {
    try {
      var data = await apiServices.get();
      List<Item> books = [];
      for (var item in data['items']) {
        books.add(Item.fromBookapu(item));
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServicesFailer.fromDioError(e));
      }
      return Left(ServicesFailer(e.toString()));
      // TODO
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchtBook() async {
    try {
      var data = await apiServices.get();
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromBookapu(item));
      }
      return Right(books);
    } catch (e) {
      if (e is Failure) {
        return Left(ServicesFailer.fromDioError(e as DioException));
      }
      return Left(ServicesFailer(e.toString()));
      // TODO
    }
  }
}
