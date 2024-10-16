import 'package:cubit_di_playground/screen_a/screen_a.dart';
import 'package:cubit_di_playground/screen_b/screen_b.dart';
import 'package:go_router/go_router.dart';

class NavConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: "/screenA",
    routes: [
      GoRoute(
        path: "/screenA",
        builder: (context, state) => const ScreenA(),
      ),
      GoRoute(
        path: "/screenB",
        builder: (context, state) => const ScreenB(),
      )
    ],
  );
}
