import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';
// import '../../presentation/widgets/appbarsilver_custom.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: '/users',
      name: UserScreen.name,
      builder: (context, state) => const UserScreen(),
    ),

    GoRoute(
      path: '/drivers',
      name: AppBarScreen.name,
      builder: (context, state) => const AppBarScreen(),
    ),

    GoRoute(
      path: '/logistics',
      name: LogisticsScreen.name,
      builder: (context, state) => const LogisticsScreen(),
    ),

    GoRoute(
      path: '/geomap',
      name: GoogleMapsScreen.name,
      builder: (context, state) => const GoogleMapsScreen(),
    ),

    GoRoute(
      path: '/reports',
      name: ReportsScreen.name,
      builder: (context, state) => const ReportsScreen(),
    ),

    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/transport',
      name: TransportScreen.name,
      builder: (context, state) => const TransportScreen(),
    ),

    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.name,
      builder: (context, state) => const ThemeChangerScreen(),
    ),
  ],
);