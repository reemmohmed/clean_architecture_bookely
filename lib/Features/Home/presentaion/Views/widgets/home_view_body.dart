import 'package:bookly/Features/Home/presentaion/Views/widgets/bast_seller_list_view.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/featcher-books_list_view_builder.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/feature_books_list_views.dart';
import 'package:bookly/core/Utils/Style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomAppBAR(),
              ),
              FeatuterBooksListViewsCunsumer(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Bast Saller', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BastSellerListView(),
          ),
        ),
      ],
    );
  }
}
