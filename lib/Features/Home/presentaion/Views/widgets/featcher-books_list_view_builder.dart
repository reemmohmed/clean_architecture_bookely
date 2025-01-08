import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/feature_Books_List_Views.dart';
import 'package:bookly/Features/Home/presentaion/manger/FeachFeatersBooks/fetuers_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatuterBooksListViewsCunsumer extends StatefulWidget {
  const FeatuterBooksListViewsCunsumer({
    super.key,
  });

  @override
  State<FeatuterBooksListViewsCunsumer> createState() =>
      _FeatuterBooksListViewsCunsumerState();
}

class _FeatuterBooksListViewsCunsumerState
    extends State<FeatuterBooksListViewsCunsumer> {
  List<BookEntity> booksed = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetuersBooksCubit, FetuersBooksState>(
      listener: (context, state) {
        if (state is FetuersBooksScusess) {
          booksed.addAll(state.books);
        }
        if (state is FetuersBooksPagenationFailers) {
          ScaffoldMessenger.of(context).showSnackBar(error(state));
        }
      },
      builder: (context, state) {
        if (state is FetuersBooksScusess ||
            state is FetuersBooksPagenationLoding ||
            state is FetuersBooksPagenationFailers) {
          return FeatureBooksListViews(
            books: booksed,
          );
        } else if (state is FetuersBooksFailers) {
          return Text(state.erroeMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  SnackBar error(FetuersBooksPagenationFailers state) =>
      SnackBar(backgroundColor: Colors.red, content: Text(state.erroeMessage));
}
