import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListViews extends StatelessWidget {
  const FeatureBooksListViews({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          itemCount: books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: CustomBookItem(
                image: books[index].image ?? '',
              ),
            );
          }),
    );
  }
}
