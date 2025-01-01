import 'package:bookly/Features/Home/presentaion/Views/widgets/books_detales_section.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/simeller_books_section.dart';
import 'package:flutter/material.dart';

import 'custom_book_detase_app_bar.dart';

class BookDetalseViewBody extends StatelessWidget {
  const BookDetalseViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetalseAppBar(),
                BooksDetalesSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimellerBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
