import 'package:bookly_app/Features/home/data/models/repos/home_repo_imp.dart';
import 'package:bookly_app/Features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatefulWidget {
  const BooklyApp({super.key});

  @override
  State<BooklyApp> createState() => _BooklyAppState();
}

class _BooklyAppState extends State<BooklyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImp>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImp>())
            ..fetchNewestBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
