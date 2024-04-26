import 'package:fleur/bloc/email_password_login_bloc.dart';
import 'package:fleur/bloc/google_auth_bloc.dart';
import 'package:fleur/bloc/home_bloc.dart';
import 'package:fleur/bloc/register_bloc.dart';
import 'package:fleur/bloc/remember_me_bloc.dart';
import 'package:fleur/bloc/vehicle_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'bloc/auth_bloc.dart';
import 'bloc/service_center_bloc.dart';
import 'bloc/user_bloc.dart';
import 'views/auth/auth_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    _appInfo();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => ServiceCenterBloc(),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => RememberMeBloc(),
        ),
        BlocProvider(
          create: (_) => RegisterBloc(),
        ),
        BlocProvider(
          create: (_) => EmailPasswordLoginBloc(),
        ),
        BlocProvider(
          create: (_) => GoogleAuthBloc(),
        ),
        //VehicleDetailsBloc
        // BlocProvider(
        //   create: (_) => VehicleDetailsBloc(),
        // ),
      ],
      child: MaterialApp(
        title: 'Fleur',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
          fontFamily: GoogleFonts.sen().fontFamily,
        ),
        // routerConfig: routes,
        home: const InitialView(),
        routes: const {
          // '/car-brand': (context) => const CarBrandScreen(),
          // '/car-model': (context) => const CarModelScreen(),
          // '/experiment': (context) => const ExperimentScreen(),
        },
      ),
    );
  }
}

_appInfo() async {
  try {
    var packageInfo = await PackageInfo.fromPlatform();
    var appName = packageInfo.appName;
    var packageName = packageInfo.packageName;
    var version = packageInfo.version;
    var buildNumber = packageInfo.buildNumber;
    var logger = Logger();
    logger.d(appName);
    logger.d(packageName);
    logger.d(version);
    logger.d(buildNumber);
  } catch (_) {}
}

var routes = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/auth",
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => const InitialView(),
    ),
    GoRoute(
      path: "/brand",
      name: "brand",
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "${state.extra}",
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        );
      },
    ),
  ],
);
