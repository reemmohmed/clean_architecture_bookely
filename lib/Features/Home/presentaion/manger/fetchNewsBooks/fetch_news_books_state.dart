part of 'fetch_news_books_cubit.dart';

@immutable
sealed class FetchNewsBooksState {}

final class FetchNewsBooksInitial extends FetchNewsBooksState {}

final class FetchNewsBooksLoding extends FetchNewsBooksState {}

final class FetchNewsBooksFailers extends FetchNewsBooksState {
  final String erroeMessage;

  FetchNewsBooksFailers(this.erroeMessage);
}

final class FetchNewsBooksSucsess extends FetchNewsBooksState {
  final List<BookEntity> books;

  FetchNewsBooksSucsess(this.books);
}
