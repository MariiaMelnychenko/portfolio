import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../apps/data/apps_repository.dart';
import '../../../apps/domain/app_item.dart';

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
  const HomeLoaded({required this.apps});

  final List<AppItem> apps;
}

final class HomeError extends HomeState {
  const HomeError(this.message);

  final String message;
}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._appsRepository) : super(const HomeInitial());

  final AppsRepository _appsRepository;

  Future<void> load() async {
    emit(const HomeLoading());
    try {
      final apps = await _appsRepository.fetchApps(limit: 8);
      emit(HomeLoaded(apps: apps));
    } catch (error, stackTrace) {
      debugPrint('HomeCubit.load failed: $error\n$stackTrace');
      emit(HomeError(error.toString()));
    }
  }
}
