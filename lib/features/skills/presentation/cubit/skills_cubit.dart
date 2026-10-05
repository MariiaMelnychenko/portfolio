import 'package:flutter_bloc/flutter_bloc.dart';

sealed class SkillsState {
  const SkillsState();
}

final class SkillsInitial extends SkillsState {
  const SkillsInitial();
}

final class SkillsLoading extends SkillsState {
  const SkillsLoading();
}

final class SkillsLoaded extends SkillsState {
  const SkillsLoaded();
}

final class SkillsError extends SkillsState {
  const SkillsError(this.message);

  final String message;
}

class SkillsCubit extends Cubit<SkillsState> {
  SkillsCubit() : super(const SkillsInitial());

  Future<void> load() async {
    emit(const SkillsLoading());
    emit(const SkillsLoaded());
  }
}
