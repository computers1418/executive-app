import 'package:executive_app/bloc/network_bloc.dart';
import 'package:executive_app/pages/details/details.dart';
import 'package:executive_app/pages/log-book/log_book.dart';
import 'package:executive_app/pages/login/login.dart';
import 'package:executive_app/pages/sending_msg/sending_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  Routes._();

  //welcome
  static const String login = "/login";
  static const String details = "/details";
  static const String templates = "/templates";
  static const String logbook = "/logbook";
}

class RouteGenerator {
  final RouteSettings settings;

  RouteGenerator({required this.settings});

  Route<dynamic> getRoute() {
    String routeName = settings.name ?? "";

    switch (routeName) {
      case Routes.login:
        return getTransistionPage(const LoginScreen());
      case Routes.details:
        return getTransistionPage(const DetailsScreen());
      case Routes.templates:
        return getTransistionPage(BlocProvider(
          create: (context) => NetworkBloc(),
          child: SendingMSG(data: settings.arguments as Map),
        ));
      case Routes.logbook:
        return getTransistionPage(const LogBook());
      default:
        return unDefinedRoute();
    }
  }

  getTransistionPage(Widget child) {
    return PageTransition(
      child: child,
      settings: settings,
      type: PageTransitionType.fade,
    );
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('Not Found'),
        ),
      ),
    );
  }
}
