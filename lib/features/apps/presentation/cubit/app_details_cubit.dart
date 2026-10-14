import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/apps_repository.dart';
import '../../domain/app_item.dart';

sealed class AppDetailsState {
  const AppDetailsState();
}

final class AppDetailsLoading extends AppDetailsState {
  const AppDetailsLoading();
}

final class AppDetailsLoaded extends AppDetailsState {
  const AppDetailsLoaded(this.app);

  final AppItem app;
}

final class AppDetailsError extends AppDetailsState {
  const AppDetailsError(this.message);

  final String message;
}

class AppDetailsCubit extends Cubit<AppDetailsState> {
  AppDetailsCubit(this._appsRepository, this._id)
    : super(const AppDetailsLoading());

  final AppsRepository _appsRepository;
  final int _id;

  Future<void> load() async {
    emit(const AppDetailsLoading());
    try {
      emit(AppDetailsLoaded(await _appsRepository.fetchApp(_id)));
    } catch (error, stackTrace) {
      debugPrint('AppDetailsCubit.load failed: $error\n$stackTrace');
      emit(AppDetailsError(error.toString()));
    }
  }
}
