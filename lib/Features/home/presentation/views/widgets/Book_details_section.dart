// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';

import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_listview_item.dart';

class BookDetailesSection extends StatelessWidget {
  const BookDetailesSection({
    Key? key,
    required this.books,
  }) : super(key: key);
  final BookModel books;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child:  CustomImage(
            ImageUrl:
                books.volumeInfo.imageLinks?.thumbnail??'',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
         Text(
          books.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          books.volumeInfo.authors![0],
          style: Styles.textStyle18
              .copyWith(color: Colors.grey, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 16,
        ),
         BookRating(
          count: books.volumeInfo.ratingsCount??0,
          rating: books.volumeInfo.averageRating??00,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
         BooksAction(books: books),
      ],
    );
  }
}
