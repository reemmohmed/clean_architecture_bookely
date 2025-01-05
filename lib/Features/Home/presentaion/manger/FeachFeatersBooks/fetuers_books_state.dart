part of 'fetuers_books_cubit.dart';

@immutable
sealed class FetuersBooksState {}

final class FetuersBooksInitial extends FetuersBooksState {}

final class FetuersBooksLoding extends FetuersBooksState {}

final class FetuersBooksFailers extends FetuersBooksState {
  final String erroeMessage;

  FetuersBooksFailers(this.erroeMessage);
}

final class FetuersBooksScusess extends FetuersBooksState {
  final List<BookEntity> books;

  FetuersBooksScusess(this.books);
}
