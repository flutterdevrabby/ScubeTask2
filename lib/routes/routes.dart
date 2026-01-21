import 'package:go_router/go_router.dart';
import 'package:scube_task/features/splash/splash_screen.dart';

import '../features/authentication/sign_in/sign_in_screen.dart';
import '../features/first/first_screen.dart';
import '../features/scm/presentaton/scm_screen.dart';
import '../features/scm/widgets/no_data_screen.dart';
import '../features/scm_data/presentation/scm_data_screen.dart';

class AppRoutes {
  AppRoutes._(); // private constructor

  // Route names
  static const String signin = '/signin';
  static const String splashScreen = '/splashScreen';
  static const String firstScreen = '/firstScreen';
  static const String scmScreen = '/scmScreen';
  static const String noDataScreen = '/noDataScreen';
  static const String scmDataScreen = '/scmDataScreen';

  // GoRouter instance
  static final GoRouter router = GoRouter(
    initialLocation: splashScreen,
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),

      GoRoute(path: signin, builder: (context, state) => const SignInScreen()),

      //
      GoRoute(
        path: firstScreen,
        builder: (context, state) => const FirstScreen(),
      ),

      //
      GoRoute(path: scmScreen, builder: (context, state) => const ScmScreen()),
      GoRoute(
        path: noDataScreen,
        builder: (context, state) => const NoDataScreen(),
      ),
      GoRoute(
        path: scmDataScreen,
        builder: (context, state) => const ScmDataScreen(),
      ),
    ],
  );
}
