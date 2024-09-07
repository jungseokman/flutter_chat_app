import 'package:flutter/material.dart';
import 'package:flutter_chat_app/features/auth/presentation/pages/login/login_page.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> routerKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: routerKey,
  initialLocation: "/login",
  routes: [
    GoRoute(
      path: "/login",
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const LoginPage(),
      ),
    ),
  ],
);
