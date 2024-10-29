part of 'featch_book_state_cubit.dart';

sealed class FeatchBookStateState extends Equatable {
  const FeatchBookStateState();

  @override
  List<Object> get props => [];
}
final class FeatchBookStateInitial extends FeatchBookStateState {}
final class FeatchBookStateLoading extends FeatchBookStateState {}
final class FeatchBookStateSuccess extends FeatchBookStateState {
  final List<Bookmodel> books;
  const FeatchBookStateSuccess(this.books);
}
final class FeatchBookStateFailure extends FeatchBookStateState {
  final String errMessage;
  const FeatchBookStateFailure(this.errMessage);
}
