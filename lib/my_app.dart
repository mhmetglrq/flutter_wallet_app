import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/config/routes/app_router.dart';
import 'package:flutter_wallet_app/features/auth/views/sign_in.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Wallet App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      home: const SignIn(),
    );
  }
}
