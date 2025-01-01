import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/Domain/repos/home_repo.dart';
import 'package:bookly/core/Error/failers.dart';
import 'package:dartz/dartz.dart';

class FetchFeatuersBooksCas {
  final HomeRepo homeRepo;

  FetchFeatuersBooksCas(this.homeRepo);
  Future<Either<Failers, List<BookEntity>>> fetchFeatuersBooks() {
    return homeRepo.fetchFeatuersBooks();
  }
}
