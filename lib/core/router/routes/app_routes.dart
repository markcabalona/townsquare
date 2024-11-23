enum AppRoute {
  activities(
    name: 'activities',
    path: '/activities',
  );

  final String name;
  final String path;
  const AppRoute({
    required this.name,
    required this.path,
  });
}
