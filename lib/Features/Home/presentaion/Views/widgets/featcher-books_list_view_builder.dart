import 'package:bookly/Features/Home/presentaion/Views/widgets/feature_Books_List_Views.dart';
import 'package:bookly/Features/Home/presentaion/manger/FeachFeatersBooks/fetuers_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatuterBooksListViewsBuilder extends StatelessWidget {
  const FeatuterBooksListViewsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetuersBooksCubit, FetuersBooksState>(
      builder: (context, state) {
        if (state is FetuersBooksScusess) {
          return FeatureBooksListViews(
            books: state.books,
          );
        } else if (state is FetuersBooksFailers) {
          return Text(state.erroeMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
