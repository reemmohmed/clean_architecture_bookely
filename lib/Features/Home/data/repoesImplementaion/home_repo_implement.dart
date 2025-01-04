import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/Domain/repos/home_repo.dart';
import 'package:bookly/Features/Home/data/data_soures/home_local_data_soure.dart';
import 'package:bookly/Features/Home/data/data_soures/home_remote_data_sourse.dart';
import 'package:bookly/core/Error/failers.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement extends HomeRepo {
  final HomeRemoteDataSourse homeRemoteDataSourse;
  final HomeLocalDataSoure homeLocalDataSoure;

  HomeRepoImplement(
      {required this.homeRemoteDataSourse, required this.homeLocalDataSoure});

  @override
  Future<Either<Failers, List<BookEntity>>> featchNewBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSoure.featchNewsBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSourse.featchNewBooks();
      return right(books);
    } catch (e) {
      return left(Failers());
    }
  }

  @override
  Future<Either<Failers, List<BookEntity>>> fetchFeatuersBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSoure.fetchFeatuersBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSourse.fetchFeatuersBooks();
      return right(books);
    } catch (e) {
      return left(Failers());
    }
  }
}
