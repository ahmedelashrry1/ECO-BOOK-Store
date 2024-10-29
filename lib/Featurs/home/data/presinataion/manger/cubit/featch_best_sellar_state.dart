part of 'featch_best_sellar_cubit.dart';

sealed class FeatchBestSellarState extends Equatable {
  const FeatchBestSellarState();

  @override
  List<Object> get props => [];
}

final class FeatchBestSellarInitial extends FeatchBestSellarState {}
final class FeatchBestSellarLoading extends FeatchBestSellarState {}
final class FeatchBestSellarSuccess extends FeatchBestSellarState {
  final List<Bookmodel> books;
  const FeatchBestSellarSuccess(this.books);
}
final class FeatchBestSellarFailure extends FeatchBestSellarState {
  final String errMessage;
const FeatchBestSellarFailure(this.errMessage);

}
