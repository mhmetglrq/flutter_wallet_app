import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet_app/config/extensions/context_extension.dart';
import 'package:flutter_wallet_app/config/utility/enums/image_enum.dart';
import 'package:flutter_wallet_app/features/stats/views/stats.dart';
import 'package:flutter_wallet_app/features/wallet/views/wallet.dart';

import '../../../config/items/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _widgetOptions = <Widget>[
    const Wallet(),
    const Stats(),
    const Text(
      'Index 2: School',
    ),
    const Text(
      'Index 3: 3',
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _widgetOptions.elementAt(_selectedIndex),
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
                  onPressed: () => _onItemTapped(0),
                  icon: SvgPicture.asset(
                    ImageEnum.wallet.svgPath,
                    colorFilter: ColorFilter.mode(
                        _selectedIndex == 0
                            ? AppColors.lightPurpleColor
                            : AppColors.whiteColor,
                        BlendMode.srcIn),
                  ),
                ),
                IconButton(
                  onPressed: () => _onItemTapped(1),
                  icon: SvgPicture.asset(
                    ImageEnum.chart.svgPath,
                    colorFilter: ColorFilter.mode(
                        _selectedIndex == 1
                            ? AppColors.lightPurpleColor
                            : AppColors.whiteColor,
                        BlendMode.srcIn),
                  ),
                ),
                IconButton(
                  onPressed: () => _onItemTapped(2),
                  icon: SvgPicture.asset(
                    ImageEnum.notification.svgPath,
                    colorFilter: ColorFilter.mode(
                        _selectedIndex == 2
                            ? AppColors.lightPurpleColor
                            : AppColors.whiteColor,
                        BlendMode.srcIn),
                  ),
                ),
                IconButton(
                  onPressed: () => _onItemTapped(3),
                  icon: SvgPicture.asset(
                    ImageEnum.settings.svgPath,
                    colorFilter: ColorFilter.mode(
                        _selectedIndex == 3
                            ? AppColors.lightPurpleColor
                            : AppColors.whiteColor,
                        BlendMode.srcIn),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
