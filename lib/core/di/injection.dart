import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../features/apps/data/apps_repository.dart';
import '../../features/apps/presentation/cubit/app_details_cubit.dart';
import '../../features/apps/presentation/cubit/apps_cubit.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';

final GetIt sl = GetIt.instance;

void configureDependencies() {
  sl.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  sl.registerLazySingleton<AppsRepository>(SupabaseAppsRepository.new);
  sl.registerFactory(() => HomeCubit(sl()));
  sl.registerFactory(() => AppsCubit(sl()));
  sl.registerFactoryParam<AppDetailsCubit, int, void>(
    (id, _) => AppDetailsCubit(sl(), id),
  );
}
