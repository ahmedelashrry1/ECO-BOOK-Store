import 'package:bloc/bloc.dart';
import 'package:bookly_store/Featurs/home/data/home_repo/home_repo.dart';
import 'package:bookly_store/Featurs/home/data/model/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

part 'featch_simellar_state.dart';

class FeatchSimellarCubit extends Cubit<FeatchSimellarState> {
  FeatchSimellarCubit(this.homeRepo) : super(FeatchSimellarInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimellar() async {
    emit(FeatchSimellarLoading());
    try {
      var result = await homeRepo.fetcheHomeRepo();
      result.fold(
        (failure) => emit(FeatchSimellarError(failure.toString())),
        (data) => emit(FeatchSimellarSuccess(data))
      );
    } catch (e) {
      emit(FeatchSimellarError(e.toString()));
    }
  }
}
