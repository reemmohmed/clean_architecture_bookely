import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookid;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String titel;
  @HiveField(3)
  final String auther;
  @HiveField(4)
  final num price;
  @HiveField(5)
  final num rationg;

  BookEntity(
      {required this.bookid,
      required this.image,
      required this.titel,
      required this.auther,
      required this.price,
      required this.rationg});
}
