import 'package:bookly/Features/search/presentation/Views/widges/custom_search_text_field.dart';
import 'package:bookly/Features/search/presentation/Views/widges/search_result.dart';
import 'package:bookly/core/Utils/Style.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSeaarchTextField(),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Booke Result',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(child: SearchReselt())
      ],
    );
  }
}


//BastSellerListView()

