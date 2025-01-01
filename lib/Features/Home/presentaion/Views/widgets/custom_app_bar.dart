import 'package:bookly/core/Utils/app_routs.dart';
import 'package:bookly/core/Utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:go_router/go_router.dart';

class CustomAppBAR extends StatelessWidget {
  const CustomAppBAR({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouts.ksearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 16,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
