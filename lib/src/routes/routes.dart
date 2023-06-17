import 'package:go_router/go_router.dart';

import '../pages/game_page.dart';
import '../pages/host_page.dart';
import '../pages/play_page.dart';
import '../pages/start_page.dart';

final class Routes {
  static const String Start = '/start';
  static const String Host = '/host';
  static const String Game = '/game';
  static const String Play = '/play';
}

final router = GoRouter(
  initialLocation: '/start',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const StartPage(),
    ),
    GoRoute(
      path: Routes.Start,
      pageBuilder: (context, state) => const NoTransitionPage(
        child: StartPage(),
      ),
    ),
    GoRoute(
      path: Routes.Host,
      pageBuilder: (context, state) => const NoTransitionPage(
        child: HostPage(),
      ),
    ),
    GoRoute(
      path: Routes.Game,
      pageBuilder: (context, state) => const NoTransitionPage(
        child: GamePage(),
      ),
    ),
    GoRoute(
      path: Routes.Play,
      pageBuilder: (context, state) => const NoTransitionPage(
        child: PlayPage(),
      ),
    ),
  ],
);
