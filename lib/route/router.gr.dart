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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../halaman1.dart' as _i1;
import '../halaman2.dart' as _i2;
import '../halaman3.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    Routesatu.name: (routeData) {
      final args =
          routeData.argsAs<RoutesatuArgs>(orElse: () => const RoutesatuArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.halamansatu(key: args.key),
      );
    },
    Routedua.name: (routeData) {
      final args = routeData.argsAs<RouteduaArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.halamandua(
          key: args.key,
          nama: args.nama,
          npm: args.npm,
          email: args.email,
        ),
      );
    },
    Routetiga.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.halamantiga(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          Routesatu.name,
          path: '/',
        ),
        _i4.RouteConfig(
          Routedua.name,
          path: '/satu',
        ),
        _i4.RouteConfig(
          Routetiga.name,
          path: '/halamantiga',
        ),
      ];
}

/// generated route for
/// [_i1.halamansatu]
class Routesatu extends _i4.PageRouteInfo<RoutesatuArgs> {
  Routesatu({_i5.Key? key})
      : super(
          Routesatu.name,
          path: '/',
          args: RoutesatuArgs(key: key),
        );

  static const String name = 'Routesatu';
}

class RoutesatuArgs {
  const RoutesatuArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'RoutesatuArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.halamandua]
class Routedua extends _i4.PageRouteInfo<RouteduaArgs> {
  Routedua({
    _i5.Key? key,
    required String? nama,
    required String? npm,
    required String? email,
  }) : super(
          Routedua.name,
          path: '/satu',
          args: RouteduaArgs(
            key: key,
            nama: nama,
            npm: npm,
            email: email,
          ),
        );

  static const String name = 'Routedua';
}

class RouteduaArgs {
  const RouteduaArgs({
    this.key,
    required this.nama,
    required this.npm,
    required this.email,
  });

  final _i5.Key? key;

  final String? nama;

  final String? npm;

  final String? email;

  @override
  String toString() {
    return 'RouteduaArgs{key: $key, nama: $nama, npm: $npm, email: $email}';
  }
}

/// generated route for
/// [_i3.halamantiga]
class Routetiga extends _i4.PageRouteInfo<void> {
  const Routetiga()
      : super(
          Routetiga.name,
          path: '/halamantiga',
        );

  static const String name = 'Routetiga';
}
