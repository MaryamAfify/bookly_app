import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kbookDetails,extra: book);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
           CustomImage(ImageUrl: book.volumeInfo.imageLinks!.thumbnail),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      child: Text(
                       book.volumeInfo.title!,
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                    book.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                       BookRating(count: book.volumeInfo.ratingsCount ??0, rating: book.volumeInfo.averageRating??0,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
