import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/config/routes/route_name.dart';
import 'package:flutter_wallet_app/features/auth/views/sign_in.dart';
import 'package:flutter_wallet_app/features/auth/views/sign_up.dart';
import 'package:flutter_wallet_app/features/home/views/home.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RouteNames.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case RouteNames.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => const Home());
      default:
        return MaterialPageRoute(builder: (_) => const SignIn());
    }
  }
}
