import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_wallet_app/config/extensions/context_extension.dart';
import 'package:flutter_wallet_app/config/routes/route_name.dart';

import '../../../config/items/app_colors.dart';
import '../../../config/utility/enums/image_enum.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: context.paddingAllDefault,
          child: Column(
            children: [
              Padding(
                padding: context.paddingVerticalDefault,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wallet',
                          style: context.textTheme.titleMedium?.copyWith(
                            color: AppColors.titleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: context.dynamicHeight(0.035),
                          ),
                        ),
                        Text(
                          'Active',
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: AppColors.subtitleColor,
                            fontSize: context.dynamicHeight(0.025),
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: context.dynamicWidth(0.08),
                      backgroundImage: AssetImage(
                        ImageEnum.profilePicture.imagePath,
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, RouteNames.cardDetail),
                child: Card(
                  elevation: 5,
                  color: AppColors.containerColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.dynamicWidth(0.1),
                      vertical: context.dynamicHeight(0.05),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Balance',
                              style: context.textTheme.titleMedium?.copyWith(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: context.dynamicHeight(0.027),
                              ),
                            ),
                            Text(
                              '\$ 1.234',
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: AppColors.whiteColor,
                                fontSize: context.dynamicHeight(0.035),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Card',
                              style: context.textTheme.titleMedium?.copyWith(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: context.dynamicHeight(0.027),
                              ),
                            ),
                            Text(
                              'Mabank',
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: AppColors.whiteColor,
                                fontSize: context.dynamicHeight(0.035),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const QuickMenu(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last Transaction",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.titleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: context.dynamicHeight(0.027),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: AppColors.titleColor,
                        fontSize: context.dynamicHeight(0.02),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: context.dynamicWidth(0.07),
                        backgroundImage: AssetImage(
                          ImageEnum.profilePicture.imagePath,
                        ),
                      ),
                      title: Text(
                        "Ödeme",
                        style: context.textTheme.labelMedium?.copyWith(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: context.dynamicHeight(0.023),
                        ),
                      ),
                      subtitle: Text(
                        "Ödeme Açıklaması",
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: AppColors.subtitleColor,
                          fontWeight: FontWeight.w400,
                          fontSize: context.dynamicHeight(0.02),
                        ),
                      ),
                      trailing: Text(
                        "\$12",
                        style: context.textTheme.labelMedium?.copyWith(
                          color: AppColors.darkBlueColor,
                          fontWeight: FontWeight.w400,
                          fontSize: context.dynamicHeight(0.023),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class QuickMenu extends StatelessWidget {
  const QuickMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingVerticalDefault,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          QuickMenuItem(
            title: "Transfer",
            svgPath: ImageEnum.transfer.svgPath,
          ),
          QuickMenuItem(
            title: "Payment",
            svgPath: ImageEnum.payment.svgPath,
          ),
          QuickMenuItem(
            title: "Payout",
            svgPath: ImageEnum.payout.svgPath,
          ),
          QuickMenuItem(
            title: "Income",
            svgPath: ImageEnum.topup.svgPath,
            onTap: () =>
                Navigator.pushNamed(context, RouteNames.addTransaction),
          ),
        ],
      ),
    );
  }
}

class QuickMenuItem extends StatelessWidget {
  const QuickMenuItem({
    super.key,
    required this.svgPath,
    required this.title,
    this.onTap,
  });

  final String svgPath;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: context.paddingAllLow,
              child: SvgPicture.asset(svgPath),
            ),
          ),
          Padding(
            padding: context.paddingTopLow,
            child: Text(
              title,
              style: context.textTheme.labelMedium?.copyWith(
                color: AppColors.extraLightPurple,
                fontSize: context.dynamicHeight(0.02),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
