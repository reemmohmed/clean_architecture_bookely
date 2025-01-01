import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_buttom.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: const Row(
        children: [
          Expanded(
            child: CustomButtom(
              titel: '19.19*',
              bacgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButtom(
              fontsize: 16,
              titel: 'Free Preview',
              bacgroundColor: Color(0xffEF8262),
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          )
        ],
      ),
    );
  }
}
