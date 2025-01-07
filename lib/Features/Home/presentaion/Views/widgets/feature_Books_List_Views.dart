import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:bookly/Features/Home/presentaion/manger/FeachFeatersBooks/fetuers_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListViews extends StatefulWidget {
  const FeatureBooksListViews({super.key, required this.books});

  final List<BookEntity> books;
  // Callback function to trigger FetchBooks

  @override
  State<FeatureBooksListViews> createState() => _FeatureBooksListViewsState();
}

class _FeatureBooksListViewsState extends State<FeatureBooksListViews> {
  final ScrollController _scrollController = ScrollController();
  int nextPage = 1;
  var isloding = false;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() async {
    // Check if the scroll position has reached 70% of the max scroll extent
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      if (!isloding) {
        isloding = true;
        await BlocProvider.of<FetuersBooksCubit>(context).feachFeachedBooks(
          pageNumber: nextPage++,
        );
        isloding = false;
      }
// Trigger the FetchBooks request
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: CustomBookItem(
              image: widget.books[index].image ?? '',
            ),
          );
        },
      ),
    );
  }
}
