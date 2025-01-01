import 'package:bookly/Features/Home/presentaion/Views/widgets/detalse_view_body.dart';
import 'package:flutter/material.dart';

class BookDetaliseView extends StatelessWidget {
  const BookDetaliseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetalseViewBody()),
    );
  }
}
