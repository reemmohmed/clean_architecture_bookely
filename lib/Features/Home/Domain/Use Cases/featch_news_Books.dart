import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/Domain/repos/home_repo.dart';
import 'package:bookly/core/Error/failers.dart';
import 'package:bookly/core/UserCase/user_case.dart';
import 'package:dartz/dartz.dart';

class FeatchNewsBooks extends UserCase<List<BookEntity>, NoPrame> {
  final HomeRepo homeRepo;

  FeatchNewsBooks(this.homeRepo);
  @override
  Future<Either<Failers, List<BookEntity>>> call([NoPrame? param]) async {
    return await homeRepo.featchNewBooks();
  }
}
