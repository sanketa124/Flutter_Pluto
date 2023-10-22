// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../data/models/songs_model.dart' as _i7;
import '../screens/home/home_screen_imports.dart' as _i2;
import '../screens/main_screen.dart' as _i1;
import '../screens/playlists/playlists_screen_imports.dart' as _i3;
import '../screens/song/song_screen_imports.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    HomeScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    PlaylistsScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PlaylistsScreen());
    },
    SongScreen.name: (routeData) {
      final args = routeData.argsAs<SongScreenArgs>(
          orElse: () => const SongScreenArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.SongScreen(key: args.key, songs: args.songs));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MainScreen.name, path: '/'),
        _i5.RouteConfig(HomeScreen.name, path: '/home-screen'),
        _i5.RouteConfig(PlaylistsScreen.name, path: '/playlists-screen'),
        _i5.RouteConfig(SongScreen.name, path: '/song-screen')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i5.PageRouteInfo<void> {
  const MainScreen() : super(MainScreen.name, path: '/');

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i5.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/home-screen');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i3.PlaylistsScreen]
class PlaylistsScreen extends _i5.PageRouteInfo<void> {
  const PlaylistsScreen()
      : super(PlaylistsScreen.name, path: '/playlists-screen');

  static const String name = 'PlaylistsScreen';
}

/// generated route for
/// [_i4.SongScreen]
class SongScreen extends _i5.PageRouteInfo<SongScreenArgs> {
  SongScreen({_i6.Key? key, _i7.SongsModel? songs})
      : super(SongScreen.name,
            path: '/song-screen', args: SongScreenArgs(key: key, songs: songs));

  static const String name = 'SongScreen';
}

class SongScreenArgs {
  const SongScreenArgs({this.key, this.songs});

  final _i6.Key? key;

  final _i7.SongsModel? songs;

  @override
  String toString() {
    return 'SongScreenArgs{key: $key, songs: $songs}';
  }
}
