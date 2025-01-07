import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/Domain/repos/home_repo.dart';
import 'package:bookly/Features/Home/data/data_soures/home_local_data_soure.dart';
import 'package:bookly/Features/Home/data/data_soures/home_remote_data_sourse.dart';
import 'package:bookly/core/Error/failers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement extends HomeRepo {
  final HomeRemoteDataSourse homeRemoteDataSourse;
  final HomeLocalDataSoure homeLocalDataSoure;

  HomeRepoImplement(
      {required this.homeRemoteDataSourse, required this.homeLocalDataSoure});

  @override
  Future<Either<Failers, List<BookEntity>>> featchNewBooks() async {
    List<BookEntity> books;
    try {
      books = homeLocalDataSoure.featchNewsBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSourse.featchNewBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailers.fromDioError(e));
      }
      return left(ServerFailers(e.toString()));
    }
  }

  @override
  Future<Either<Failers, List<BookEntity>>> fetchFeatuersBooks(
      {int pageNumber = 0}) async {
    List<BookEntity> books;
    try {
      books = homeLocalDataSoure.fetchFeatuersBooks(
        pageNumber: pageNumber,
      );
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSourse.fetchFeatuersBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailers.fromDioError(e));
      }
      return left(ServerFailers(e.toString()));
    }
  }
}
