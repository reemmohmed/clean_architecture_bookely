import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchFutchersBooks();
  Future<List<BookEntity>> fetchNewssBooks();
}
