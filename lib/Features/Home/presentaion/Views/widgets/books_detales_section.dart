import 'package:bookly/Features/Home/presentaion/Views/widgets/book_action.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Utils/Style.dart';

class BooksDetalesSection extends StatelessWidget {
  const BooksDetalesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var wight = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: wight * .2),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungel Books',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'The JunGel Books',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 16,
        ),
        const BookAction(),
      ],
    );
  }
}
