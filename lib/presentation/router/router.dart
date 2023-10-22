part of 'router_imports.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainScreen, initial: true),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: PlaylistsScreen),
    AutoRoute(page: SongScreen),
  ],
)
class $AppRouter {}
