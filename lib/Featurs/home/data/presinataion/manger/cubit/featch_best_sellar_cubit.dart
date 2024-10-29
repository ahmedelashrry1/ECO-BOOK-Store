import 'package:bloc/bloc.dart';
import 'package:bookly_store/Featurs/home/data/home_repo/home_repo.dart';
import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

part 'featch_best_sellar_state.dart';

class FeatchBestSellarCubit extends Cubit<FeatchBestSellarState> {
  FeatchBestSellarCubit(this.homeRepo) : super(FeatchBestSellarInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellar() async {
    emit(FeatchBestSellarLoading());
    try {
      var result = await homeRepo.fetchBestSellarRepo();
      result.fold(
        (failure) => emit(FeatchBestSellarFailure(failure.toString())),
        (data) => emit(FeatchBestSellarSuccess(data))
      );
    } catch (e) {
      emit(FeatchBestSellarFailure(e.toString()));
    }
  }
}
