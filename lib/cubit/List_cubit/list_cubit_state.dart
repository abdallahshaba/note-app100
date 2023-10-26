part of 'list_cubit_cubit.dart';

@immutable
sealed class ListCubitState {}

final class ListCubitInitial extends ListCubitState {}

final class ListCubitLoading extends ListCubitState {}

final class ListCubitSuccess extends ListCubitState {
  final List<NoteModel22> list ;

  ListCubitSuccess(this.list);
}

final class ListCubitFailure extends ListCubitState {
  final String errerMessage;

  ListCubitFailure(this.errerMessage);
}
