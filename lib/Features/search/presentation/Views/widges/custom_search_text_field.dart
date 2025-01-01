import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomSeaarchTextField extends StatelessWidget {
  const CustomSeaarchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: bildOutLineInPutBorder(),
            enabledBorder: bildOutLineInPutBorder(),
            hintText: 'Search',
            suffixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 16,
              color: Colors.white,
            ),
            border: bildOutLineInPutBorder()),
      ),
    );
  }

  OutlineInputBorder bildOutLineInPutBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
