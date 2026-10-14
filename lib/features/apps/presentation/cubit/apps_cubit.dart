import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/apps_repository.dart';
import '../../domain/app_item.dart';

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
  const AppsLoaded(this.apps);

  final List<AppItem> apps;
}

final class AppsError extends AppsState {
  const AppsError(this.message);

  final String message;
}

class AppsCubit extends Cubit<AppsState> {
  AppsCubit(this._appsRepository) : super(const AppsInitial());

  final AppsRepository _appsRepository;

  Future<void> load() async {
    emit(const AppsLoading());
    try {
      emit(AppsLoaded(await _appsRepository.fetchApps()));
    } catch (error, stackTrace) {
      debugPrint('AppsCubit.load failed: $error\n$stackTrace');
      emit(AppsError(error.toString()));
    }
  }
}
