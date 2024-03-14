import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet_app/config/extensions/context_extension.dart';
import 'package:flutter_wallet_app/config/utility/enums/image_enum.dart';

import '../../../config/items/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        bottom: false,
        child: Center(
          child: Text('Home'),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dynamicWidth(0.05),
        ),
        child: BottomAppBar(
          surfaceTintColor: Colors.transparent,
          color: Colors.transparent,
          height: context.dynamicHeight(0.15),
          padding: context.paddingBottomHigh,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 10,
            color: AppColors.containerColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(ImageEnum.wallet.svgPath),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(ImageEnum.chart.svgPath),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(ImageEnum.notification.svgPath),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(ImageEnum.settings.svgPath),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
