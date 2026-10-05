// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_navigation.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $mainRouteData,
  $appsRouteData,
  $skillsRouteData,
];

RouteBase get $mainRouteData => GoRouteData.$route(
  path: '/',
  hasOverriddenOnExit: false,
  factory: $MainRouteData._fromState,
);

mixin $MainRouteData on GoRouteData {
  static MainRouteData _fromState(GoRouterState state) => const MainRouteData();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $appsRouteData => GoRouteData.$route(
  path: '/apps',
  hasOverriddenOnExit: false,
  factory: $AppsRouteData._fromState,
);

mixin $AppsRouteData on GoRouteData {
  static AppsRouteData _fromState(GoRouterState state) => const AppsRouteData();

  @override
  String get location => GoRouteData.$location('/apps');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $skillsRouteData => GoRouteData.$route(
  path: '/skills',
  hasOverriddenOnExit: false,
  factory: $SkillsRouteData._fromState,
);

mixin $SkillsRouteData on GoRouteData {
  static SkillsRouteData _fromState(GoRouterState state) =>
      const SkillsRouteData();

  @override
  String get location => GoRouteData.$location('/skills');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
