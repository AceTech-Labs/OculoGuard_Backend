import 'package:flutter/material.dart';
import 'package:oculoguard_mobile_app_flutter/screens/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => WelcomePage(),
        );
      case "/register":
        return MaterialPageRoute(
          builder: (builder) => SignInPage(),
        );
      case "/login":
        return MaterialPageRoute(
          builder: (builder) => RegisterPage(),
        );
      case "/resetPassword":
        return MaterialPageRoute(
          builder: (builder) => ResetPassword(),
        );
      case "/home":
        return MaterialPageRoute(
          builder: (builder) => Home(),
        );
      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() => MaterialPageRoute(
      builder: (_) => const Scaffold(
            body: Center(
              child: Text("Error Route"),
            ),
          ));
}
