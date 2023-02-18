import 'package:auto_route/annotations.dart';
import 'package:autoroute/halaman1.dart';
import 'package:autoroute/halaman2.dart';
import 'package:autoroute/halaman3.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: halamansatu, initial: true),
  AutoRoute(page: halamandua, path: '/satu'),
  AutoRoute(page: halamantiga),
], replaceInRouteName: 'halaman,route')
class $AppRouter {}