import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/apps/presentation/cubit/apps_cubit.dart';
import '../../features/apps/presentation/pages/my_apps_page.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
import '../../features/home/presentation/pages/main_page.dart';
import '../../features/skills/presentation/cubit/skills_cubit.dart';
import '../../features/skills/presentation/pages/my_skills_page.dart';
import '../di/injection.dart';

part 'app_navigation.g.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: $appRoutes,
);

@TypedGoRoute<MainRouteData>(path: '/')
class MainRouteData extends GoRouteData with $MainRouteData {
  const MainRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(create: (context) => sl()..load()),
      ],
      child: const MainPage(),
    );
  }
}

@TypedGoRoute<AppsRouteData>(path: '/apps')
class AppsRouteData extends GoRouteData with $AppsRouteData {
  const AppsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppsCubit>(create: (context) => sl()..load()),
      ],
      child: const MyAppsPage(),
    );
  }
}

@TypedGoRoute<SkillsRouteData>(path: '/skills')
class SkillsRouteData extends GoRouteData with $SkillsRouteData {
  const SkillsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SkillsCubit>(create: (context) => sl()..load()),
      ],
      child: const MySkillsPage(),
    );
  }
}
