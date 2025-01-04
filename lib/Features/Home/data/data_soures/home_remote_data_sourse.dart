import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/data/book_model/book_model.dart';
import 'package:bookly/core/Utils/Functions/save_books_data.dart';
import 'package:bookly/core/Utils/api_servers.dart';
import 'package:bookly/core/Utils/constant.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSourse {
  Future<List<BookEntity>> fetchFeatuersBooks();
  Future<List<BookEntity>> featchNewBooks();
}

class HomeremoteDataSourseImpemen extends HomeRemoteDataSourse {
  final ApiServers apiServers;

  HomeremoteDataSourseImpemen(this.apiServers);
  @override
  Future<List<BookEntity>> fetchFeatuersBooks() async {
    var data = await apiServers.get(
        endpoint: 'volumes?q=programing&Filtering=free_books');
    List<BookEntity> books = getBooksMap(data);
    SaveBooksData(books, kFeatchBooks);
    return books;
  }

  @override
  Future<List<BookEntity>> featchNewBooks() async {
    var data = await apiServers.get(
        endpoint: 'volumes?q=programing&Filtering=free_books&Sorting=newest');
    List<BookEntity> books = getBooksMap(data);
    SaveBooksData(books, kNewesBooks);
    return books;
  }

  List<BookEntity> getBooksMap(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var mapbook in data['items']) {
      books.add(BookModel.fromJson(mapbook));
    }
    return books;
  }
}
