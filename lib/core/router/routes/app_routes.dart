enum AppRoute {
  initial(
    name: 'initial',
    path: '/',
  );

  final String name;
  final String path;
  const AppRoute({
    required this.name,
    required this.path,
  });
}
