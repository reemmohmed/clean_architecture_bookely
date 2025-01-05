import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'fetuers_books_state.dart';

class FetuersBooksCubit extends Cubit<FetuersBooksState> {
  FetuersBooksCubit() : super(FetuersBooksInitial());
}
