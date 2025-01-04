import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/core/Utils/constant.dart';
import 'package:hive/hive.dart';

//  apiدا تكيش البيانات  من Storege  for device
abstract class HomeLocalDataSoure {
  List<BookEntity> fetchFeatuersBooks();
  List<BookEntity> featchNewsBooks();
}

class HomeLocalDataSoureImple extends HomeLocalDataSoure {
  @override
  List<BookEntity> featchNewsBooks() {
    var box = Hive.box<BookEntity>(kFeatchBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchFeatuersBooks() {
    var box = Hive.box<BookEntity>(kNewesBooks);
    return box.values.toList();
  }
}
