import 'package:flutter_bloc/flutter_bloc.dart';

sealed class HomeState {
  const HomeState();
}

final class HomeInitial extends HomeState {
  const HomeInitial();
}

final class HomeLoading extends HomeState {
  const HomeLoading();
}

final class HomeLoaded extends HomeState {
  const HomeLoaded();
}

final class HomeError extends HomeState {
  const HomeError(this.message);

  final String message;
}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial());

  Future<void> load() async {
    emit(const HomeLoading());
    emit(const HomeLoaded());
  }
}
