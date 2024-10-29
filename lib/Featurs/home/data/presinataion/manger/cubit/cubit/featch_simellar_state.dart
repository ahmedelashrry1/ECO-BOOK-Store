part of 'featch_simellar_cubit.dart';

sealed class FeatchSimellarState extends Equatable {
  const FeatchSimellarState();

  @override
  List<Object> get props => [];
}

final class FeatchSimellarInitial extends FeatchSimellarState {}

final class FeatchSimellarLoading extends FeatchSimellarState {}

final class FeatchSimellarSuccess extends FeatchSimellarState {
  final List<Bookmodel> books;
  const FeatchSimellarSuccess(this.books);
}

final class FeatchSimellarError extends FeatchSimellarState {
  final String error;
  const FeatchSimellarError(this.error);
}
