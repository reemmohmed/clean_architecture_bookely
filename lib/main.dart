import 'package:bookly/Features/Home/Domain/Use%20Cases/featch_news_Books_case.dart';
import 'package:bookly/Features/Home/Domain/Use%20Cases/fetch_featuers_books_cas.dart';
import 'package:bookly/Features/Home/Domain/entities/book_entity.dart';
import 'package:bookly/Features/Home/data/repoesImplementaion/home_repo_implement.dart';
import 'package:bookly/Features/Home/presentaion/manger/FeachFeatersBooks/fetuers_books_cubit.dart';
import 'package:bookly/Features/Home/presentaion/manger/fetchNewsBooks/fetch_news_books_cubit.dart';
import 'package:bookly/Features/Splash/Presentaton/Views/Widgets/constant.dart';
import 'package:bookly/core/Utils/Functions/Setup_servers.dart';
import 'package:bookly/core/Utils/app_routs.dart';
import 'package:bookly/core/Utils/constant.dart';
import 'package:bookly/core/Utils/simple_bloc_opservers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeatchBooks);
  await Hive.openBox<BookEntity>(kNewesBooks);
  setUpServerLocator();
  Bloc.observer = SimpleBlocOpservers();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FetuersBooksCubit>(
          create: (context) => FetuersBooksCubit(
            FetchFeatuersBooksCas(getIt.get<HomeRepoImplement>()),
          )..feachFeachedBooks(),
        ),
        BlocProvider<FetchNewsBooksCubit>(
          create: (context) => FetchNewsBooksCubit(
            FeatchNewsBooksCase(
              getIt.get<HomeRepoImplement>(),
            ),
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouts.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
