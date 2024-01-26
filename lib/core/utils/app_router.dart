import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/models/repos/home_repo_imp.dart';
import 'package:bookly_app/Features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/Presentation/views/search_View.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/Presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kbookDetails = '/bookDetails';
  static const kSearch = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kSearch,
      builder: (BuildContext context, GoRouterState state) {
        return const SearchView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kbookDetails,
      builder: (BuildContext context, GoRouterState state) {
        return  BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImp>()),
          child:   BookDetailsView(books: state.extra as BookModel),
        );
      },
    )
  ]);
}
