import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Splash/Presentaton/Views/Widgets/constant.dart';
import 'package:bookly/Features/Splash/Presentaton/Views/splash_view.dart';
import 'package:bookly/core/Utils/app_routs.dart';
import 'package:bookly/core/Utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const BooklyApp());
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeatchBooks);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouts.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}
