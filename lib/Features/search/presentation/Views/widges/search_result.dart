import 'package:bookly/Features/Home/presentaion/Views/widgets/bast_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchReselt extends StatelessWidget {
  const SearchReselt({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, inddex) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BookListViewItem(),
          );
        });
  }
}
