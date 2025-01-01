import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/core/Error/failers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failers, List<BookEntity>>> fetchFetchersBooks();

  // Future<List<BookEntity>> fetchFutchersBooks();
  // Future<List<BookEntity>> fetchNewssBooks();
}
