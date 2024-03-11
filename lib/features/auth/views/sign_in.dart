import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet_app/config/extensions/context_extension.dart';
import 'package:flutter_wallet_app/config/items/app_colors.dart';
import 'package:flutter_wallet_app/config/utility/enums/image_enum.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.paddingAllDefault,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: context.paddingAllLow,
                width: context.dynamicWidth(0.6),
                child: Text(
                  'Welcome back to Mabank Wallet',
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: AppColors.darkBlueColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: context.paddingBottomDefault,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: SvgPicture.asset(
                          ImageEnum.profile.svgPath,
                          height: context.lowValue,
                        ),
                        prefixIconConstraints: BoxConstraints(
                          minWidth: context.dynamicWidth(
                            0.13,
                          ),
                          minHeight: context.dynamicHeight(0.04),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: context.lowValue,
                          vertical: context.dynamicHeight(0.02),
                        ),
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: AppColors.grayColor,
                      ),
                    ),
                  ),
                  TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset(
                        ImageEnum.keySquare.svgPath,
                      ),
                      prefixIconConstraints: BoxConstraints(
                        minWidth: context.dynamicWidth(
                          0.13,
                        ),
                        minHeight: context.dynamicHeight(0.04),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: context.lowValue,
                        vertical: context.dynamicHeight(0.02),
                      ),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppColors.grayColor,
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() => _isObscure = !_isObscure),
                        child: SvgPicture.asset(
                          _isObscure
                              ? ImageEnum.eye.svgPath
                              : ImageEnum.eyeSlash.svgPath,
                          height: context.lowValue,
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints(
                        minWidth: context.dynamicWidth(
                          0.13,
                        ),
                        minHeight: context.dynamicHeight(0.04),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: AppColors.darkPurpleColor,
                    minWidth: context.dynamicWidth(0.6),
                    child: Padding(
                      padding: context.paddingVerticalDefault,
                      child: Text(
                        "Login",
                        style: context.textTheme.titleLarge?.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: context.paddingVerticalLow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account ?",
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: AppColors.subtitleColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            " Sign Up",
                            style: context.textTheme.bodyLarge?.copyWith(
                              color: AppColors.lightBlueColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
