import 'package:clone_line/screens/chat_screen.dart';
import 'package:clone_line/screens/initial_screen.dart';


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'initial',
      pageBuilder: (context, state) {
          return MaterialPage(
          key: state.pageKey, 
          child: InitialScreen()
          );
        },
    ),
    GoRoute(
      path: '/chat',
      name: 'chat',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: ChatScreen()
        );
      },
    ),
  ]
);