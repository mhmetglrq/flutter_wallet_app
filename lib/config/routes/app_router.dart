import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/config/routes/route_name.dart';
import 'package:flutter_wallet_app/features/auth/views/sign_in.dart';
import 'package:flutter_wallet_app/features/auth/views/sign_up.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RouteNames.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      default:
        return MaterialPageRoute(builder: (_) => const SignIn());
    }
  }
}
