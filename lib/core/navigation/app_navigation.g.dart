// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_navigation.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $mainRouteData,
  $appsRouteData,
  $skillsRouteData,
  $aboutRouteData,
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
  routes: [
    GoRouteData.$route(
      path: ':id',
      hasOverriddenOnExit: false,
      factory: $AppDetailsRouteData._fromState,
    ),
  ],
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

mixin $AppDetailsRouteData on GoRouteData {
  static AppDetailsRouteData _fromState(GoRouterState state) =>
      AppDetailsRouteData(id: int.parse(state.pathParameters['id']!));

  AppDetailsRouteData get _self => this as AppDetailsRouteData;

  @override
  String get location => GoRouteData.$location(
    '/apps/${Uri.encodeComponent(_self.id.toString())}',
  );

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

RouteBase get $aboutRouteData => GoRouteData.$route(
  path: '/about',
  hasOverriddenOnExit: false,
  factory: $AboutRouteData._fromState,
);

mixin $AboutRouteData on GoRouteData {
  static AboutRouteData _fromState(GoRouterState state) =>
      const AboutRouteData();

  @override
  String get location => GoRouteData.$location('/about');

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
