import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/features/about/presentation/pages/about_page.dart';

import '../../features/apps/presentation/cubit/app_details_cubit.dart';
import '../../features/apps/presentation/cubit/apps_cubit.dart';
import '../../features/apps/presentation/pages/app_details_page.dart';
import '../../features/apps/presentation/pages/my_apps_page.dart';
import '../../features/home/presentation/cubit/home_cubit.dart';
import '../../features/home/presentation/pages/main_page.dart';
import '../../features/skills/presentation/pages/my_skills_page.dart';
import '../di/injection.dart';

part 'app_navigation.g.dart';

final GoRouter appRouter = GoRouter(initialLocation: '/', routes: $appRoutes);

@TypedGoRoute<MainRouteData>(path: '/')
class MainRouteData extends GoRouteData with $MainRouteData {
  const MainRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<HomeCubit>(
      create: (context) => sl()..load(),
      child: const MainPage(),
    );
  }
}

@TypedGoRoute<AppsRouteData>(
  path: '/apps',
  routes: [TypedGoRoute<AppDetailsRouteData>(path: ':id')],
)
class AppsRouteData extends GoRouteData with $AppsRouteData {
  const AppsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<AppsCubit>(
      create: (context) => sl()..load(),
      child: const MyAppsPage(),
    );
  }
}

class AppDetailsRouteData extends GoRouteData with $AppDetailsRouteData {
  const AppDetailsRouteData({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<AppDetailsCubit>(
      create: (context) => sl(param1: id)..load(),
      child: const AppDetailsPage(),
    );
  }
}

@TypedGoRoute<SkillsRouteData>(path: '/skills')
class SkillsRouteData extends GoRouteData with $SkillsRouteData {
  const SkillsRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MySkillsPage();
  }
}

@TypedGoRoute<AboutRouteData>(path: '/about')
class AboutRouteData extends GoRouteData with $AboutRouteData {
  const AboutRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutPage();
  }
}
