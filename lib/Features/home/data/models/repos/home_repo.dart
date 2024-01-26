import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures,List<BookModel>>> fetchNewestBooks();
   Future<Either<Failures,List<BookModel>>> fetchFeaturedBooks();
   Future<Either<Failures,List<BookModel>>> fetchSimilarBooks({required category});


}
