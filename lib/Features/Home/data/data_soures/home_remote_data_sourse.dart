import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';

abstract class HomeRemoteDataSourse {
  Future<List<BookEntity>> fetchFeatuersBooks();
  Future<List<BookEntity>> featchNewBooks();
}

class HomeremoteDataSourseImpemen extends HomeRemoteDataSourse {
  @override
  Future<List<BookEntity>> featchNewBooks() {
    // TODO: implement featchNewBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchFeatuersBooks() {
    // TODO: implement fetchFeatuersBooks
    throw UnimplementedError();
  }
}
