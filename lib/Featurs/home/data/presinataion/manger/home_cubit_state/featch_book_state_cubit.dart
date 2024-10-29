import 'package:bloc/bloc.dart';
import 'package:bookly_store/Featurs/home/data/home_repo/home_repo.dart';
import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

part 'featch_book_state_state.dart';

class FeatchBookStateCubit extends Cubit<FeatchBookStateState> {
  FeatchBookStateCubit(this.homeRepo) : super(FeatchBookStateInitial());
  
  final HomeRepo homeRepo;
  Future<void> fetchHome() async {
    emit(FeatchBookStateLoading());
    try {
      var result = await homeRepo.fetcheHomeRepo();
      result.fold(
        (failure) => emit(FeatchBookStateFailure(failure.toString())),
        (data) => emit(FeatchBookStateSuccess(data))
      );
    } catch (e) {
      emit(FeatchBookStateFailure(e.toString()));
    }
  }
  }
