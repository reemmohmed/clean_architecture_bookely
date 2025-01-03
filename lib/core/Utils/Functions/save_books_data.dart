import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void SaveBooksData(List<BookEntity> books, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
