import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

import '../../features/apps/presentation/cubit/apps_cubit.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
import '../../features/skills/presentation/cubit/skills_cubit.dart';

final GetIt sl = GetIt.instance;

void configureDependencies() {
  sl.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
  sl.registerFactory(HomeCubit.new);
  sl.registerFactory(AppsCubit.new);
  sl.registerFactory(SkillsCubit.new);
}
