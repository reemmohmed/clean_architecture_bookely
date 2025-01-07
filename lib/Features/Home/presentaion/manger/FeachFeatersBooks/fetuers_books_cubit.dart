import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/Domain/Use%20Cases/fetch_featuers_books_cas.dart';
import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'fetuers_books_state.dart';

class FetuersBooksCubit extends Cubit<FetuersBooksState> {
  FetuersBooksCubit(this.fetchFeatuersBooksCas) : super(FetuersBooksInitial());
  final FetchFeatuersBooksCas fetchFeatuersBooksCas;

  Future<void> feachFeachedBooks({int pageNumber = 0}) async {
    emit(FetuersBooksLoding());
    var result = await fetchFeatuersBooksCas.call(pageNumber);
    result.fold((failers) {
      emit(FetuersBooksFailers(failers.erroeMessage));
    }, (books) {
      emit(FetuersBooksScusess(books));
    });
  }
}
