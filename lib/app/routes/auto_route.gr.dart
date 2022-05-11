// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../articles/view/articles_view.dart' as _i3;
import '../../home/view/home.dart' as _i2;
import '../../top_level.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    TopLevel.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TopLevel());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeView());
    },
    ArticlesRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ArticlesView());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(TopLevel.name, path: '/', children: [
          _i4.RouteConfig(HomeRouter.name,
              path: 'books',
              parent: TopLevel.name,
              children: [
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: HomeRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i4.RouteConfig(ArticlesRouter.name,
              path: 'articles',
              parent: TopLevel.name,
              children: [
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: ArticlesRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.TopLevel]
class TopLevel extends _i4.PageRouteInfo<void> {
  const TopLevel({List<_i4.PageRouteInfo>? children})
      : super(TopLevel.name, path: '/', initialChildren: children);

  static const String name = 'TopLevel';
}

/// generated route for
/// [_i2.HomeView]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'books', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.ArticlesView]
class ArticlesRouter extends _i4.PageRouteInfo<void> {
  const ArticlesRouter({List<_i4.PageRouteInfo>? children})
      : super(ArticlesRouter.name, path: 'articles', initialChildren: children);

  static const String name = 'ArticlesRouter';
}
