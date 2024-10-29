import 'package:bookly_store/Core/error/Failure.dart';
import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Bookmodel>>> fetchBestSellarRepo();
  Future<Either<Failure, List<Bookmodel>>> fetcheHomeRepo();
}
