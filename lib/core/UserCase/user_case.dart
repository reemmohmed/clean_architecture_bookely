import 'package:bookly/core/Error/failers.dart';
import 'package:dartz/dartz.dart';

abstract class UserCase<type, param> {
  Future<Either<Failers, type>> call([param param]);
}

class NoPrame {}
