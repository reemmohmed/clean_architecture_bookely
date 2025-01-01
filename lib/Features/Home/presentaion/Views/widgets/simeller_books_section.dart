import 'package:bookly/Features/Home/presentaion/Views/widgets/simeller_books_list_view.dart';
import 'package:bookly/core/Utils/Style.dart';
import 'package:flutter/material.dart';

class SimellerBooksSection extends StatelessWidget {
  const SimellerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also Like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimellerBooksListView(),
      ],
    );
  }
}
