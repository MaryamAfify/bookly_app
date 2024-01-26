// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';

import 'Book_details_section.dart';
import 'Similar_books_section.dart';
import 'custom_app_bar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    Key? key,
    required this.book,
  }) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomAppBarBookDetails(),
                BookDetailesSection(books: book),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
