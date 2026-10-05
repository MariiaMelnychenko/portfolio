import 'package:flutter_bloc/flutter_bloc.dart';

sealed class AppsState {
  const AppsState();
}

final class AppsInitial extends AppsState {
  const AppsInitial();
}

final class AppsLoading extends AppsState {
  const AppsLoading();
}

final class AppsLoaded extends AppsState {
  const AppsLoaded();
}

final class AppsError extends AppsState {
  const AppsError(this.message);

  final String message;
}

class AppsCubit extends Cubit<AppsState> {
  AppsCubit() : super(const AppsInitial());

  Future<void> load() async {
    emit(const AppsLoading());
    emit(const AppsLoaded());
  }
}
