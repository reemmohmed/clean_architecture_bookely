import 'package:bookly/core/Utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //2.7/4
      aspectRatio: 3.6 / 3,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(
                  AssetsData.test,
                ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
