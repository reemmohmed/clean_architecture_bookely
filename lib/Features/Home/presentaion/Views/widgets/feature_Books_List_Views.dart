import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListViews extends StatelessWidget {
  const FeatureBooksListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: CustomBookItem(),
            );
          }),
    );
  }
}
