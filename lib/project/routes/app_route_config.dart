import 'package:go_router/go_router.dart';
import 'package:pulzion23/features/landing_page/ui/home_page.dart';
import 'package:pulzion23/project/routes/app_route_constant.dart';

import '../../features/landing_page/ui/landing_page.dart';
import '../../features/profile_page/ui/profile_page.dart';

final GoRouter router = GoRouter(routes: [
  // Implement routes for landing and profile pages
  GoRoute(
    path: '/',
    name: RouteName.landing,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/profile',
    name: RouteName.profile,
    builder: (context, state) => const ProfilePage(),
  ),
]);
