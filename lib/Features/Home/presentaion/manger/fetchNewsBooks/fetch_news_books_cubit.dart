import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/Domain/Use%20Cases/featch_news_Books_case.dart';
import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'fetch_news_books_state.dart';

class FetchNewsBooksCubit extends Cubit<FetchNewsBooksState> {
  FetchNewsBooksCubit(this.featchNewsBooksCase)
      : super(FetchNewsBooksInitial());

  final FeatchNewsBooksCase featchNewsBooksCase;

  Future<void> fetchNewsBooks() async {
    emit(FetchNewsBooksLoding());
    var result = await featchNewsBooksCase.call();
    result.fold((failers) {
      emit(FetchNewsBooksFailers(failers.erroeMessage));
    }, (books) {
      emit(FetchNewsBooksSucsess(books));
    });
  }
}
