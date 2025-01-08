import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/Domain/Use%20Cases/fetch_featuers_books_cas.dart';
import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/core/Error/failers.dart';
import 'package:meta/meta.dart';

part 'fetuers_books_state.dart';

class FetuersBooksCubit extends Cubit<FetuersBooksState> {
  FetuersBooksCubit(this.fetchFeatuersBooksCas) : super(FetuersBooksInitial());
  final FetchFeatuersBooksCas fetchFeatuersBooksCas;

  Future<void> feachFeachedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FetuersBooksLoding());
    } else {
      emit(FetuersBooksPagenationLoding());
    }
    var result = await fetchFeatuersBooksCas.call(pageNumber);
    result.fold((failers) {
      if (pageNumber == 0) {
        emit(FetuersBooksFailers(failers.erroeMessage));
      } else {
        emit(FetuersBooksPagenationFailers(failers.erroeMessage));
      }
    }, (books) {
      emit(FetuersBooksScusess(books));
    });
  }
}
