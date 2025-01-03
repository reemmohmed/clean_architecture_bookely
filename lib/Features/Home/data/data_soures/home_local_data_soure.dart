import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';

// دا تكيش البيانات  من api
abstract class HomeLocalDataSoure {
  List<BookEntity> fetchFeatuersBooks();
  List<BookEntity> featchNewsBooks();
}

class HomeLocalDataSoureImple extends HomeLocalDataSoure {
  @override
  List<BookEntity> featchNewsBooks() {
    // TODO: implement featchNewsBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchFeatuersBooks() {
    // TODO: implement fetchFeatuersBooks
    throw UnimplementedError();
  }
}
