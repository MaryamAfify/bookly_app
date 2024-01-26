import 'package:bookly_app/Features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const  EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItem(book: state.books[index]),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return ErrorWidget(state.errmsg);
        } else {
          return Center(child: const CircularProgressIndicator());
        }
      },
    );
  }
}
