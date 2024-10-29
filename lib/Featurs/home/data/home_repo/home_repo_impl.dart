import 'package:bookly_store/Core/error/Failure.dart';
import 'package:bookly_store/Core/utils/api_service.dart';
import 'package:bookly_store/Featurs/home/data/home_repo/home_repo.dart';
import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);    
  @override
  Future<Either<Failure, List<Bookmodel>>> fetchBestSellarRepo() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=subject:programming');
      List<Bookmodel> books = [];
      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  } 
  @override
  Future<Either<Failure, List<Bookmodel>>> fetcheHomeRepo()async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=subject:information system');
      List<Bookmodel> books = [];
      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<Bookmodel>>> featchdetailsbook({required String category})async {
try {
      var data = await apiService.get(endPoint: 'volumes?&sorting=relevance&q=subject:computer science');
      List<Bookmodel> books = [];
      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  } 
}