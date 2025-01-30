import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/settings_screen.dart'; // Ayarlar ekranını import ediyoruz

final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/settings', // Ayarlar sayfasına yönlendirecek rotayı ekliyoruz
      builder: (context, state) =>
          const SettingsScreen(), // SettingsScreen'i buraya ekliyoruz
    ),
  ],
);
