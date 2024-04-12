import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/config/extensions/context_extension.dart';
import 'package:flutter_wallet_app/config/items/app_colors.dart';

import '../../../config/utility/enums/image_enum.dart';

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: context.paddingAllDefault,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Income Stats",
                  style: context.textTheme.titleMedium?.copyWith(
                    color: AppColors.titleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: context.dynamicHeight(0.027),
                  ),
                ),
              ),
              Padding(
                padding: context.paddingVerticalDefault,
                child: SizedBox(
                  height: context.dynamicHeight(0.3),
                  child: PageView.builder(
                    itemCount: 2,
                    onPageChanged: (value) =>
                        setState(() => _currentIndex = value),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Image.asset(ImageEnum.horizontalCard.imagePath);
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 2; i++)
                    Padding(
                      padding:
                          EdgeInsets.only(right: context.dynamicWidth(0.02)),
                      child: CircleAvatar(
                        radius: context.dynamicWidth(0.025),
                        backgroundColor: i == _currentIndex
                            ? AppColors.darkPurpleColor
                            : AppColors.subtitleColor,
                      ),
                    ),
                ],
              ),
              Padding(
                padding: context.paddingTopDefault,
                child: Text(
                  "Card ${_currentIndex + 1}",
                  style: context.textTheme.labelSmall?.copyWith(
                    color: AppColors.subtitleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: context.dynamicHeight(0.023),
                  ),
                ),
              ),
              Text(
                '\$ 1.234',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: AppColors.darkPurpleColor,
                  fontSize: context.dynamicHeight(0.035),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: AppColors.titleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: context.dynamicHeight(0.027),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Latest",
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
