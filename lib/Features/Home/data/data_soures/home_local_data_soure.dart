import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/core/Utils/constant.dart';
import 'package:hive/hive.dart';

//  apiدا تكيش البيانات  من Storege  for device
abstract class HomeLocalDataSoure {
  List<BookEntity> fetchFeatuersBooks({int pageNumber = 0});
  List<BookEntity> featchNewsBooks();
}

class HomeLocalDataSoureImple extends HomeLocalDataSoure {
  @override
  List<BookEntity> featchNewsBooks() {
    var box = Hive.box<BookEntity>(kFeatchBooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchFeatuersBooks({int pageNumber = 0}) {
    int stareindex = pageNumber * 10;
    int endindex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kNewesBooks);
    var leght = box.values.length;
    if (stareindex >= leght || endindex > leght) {
      return [];
    }
    return box.values.toList().sublist(stareindex, endindex);
  }
}
