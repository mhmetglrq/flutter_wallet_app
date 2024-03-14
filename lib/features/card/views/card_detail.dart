import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/config/extensions/context_extension.dart';
import 'package:flutter_wallet_app/config/utility/enums/image_enum.dart';

import '../../../config/items/app_colors.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppColors.containerColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: context.paddingAllDefault,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Detail card',
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: context.dynamicHeight(0.035),
                ),
              ),
              Image.asset(ImageEnum.horizontalCard.imagePath),
              const Column(
                children: [
                  CardInfoItem(
                    title: 'Name',
                    info: 'Jaka mambang',
                  ),
                  CardInfoItem(
                    title: 'Bank',
                    info: 'Mabank',
                  ),
                  CardInfoItem(
                    title: 'Account',
                    info: '.... .... .... 2138',
                  ),
                  CardInfoItem(
                    title: 'Status',
                    info: 'Active',
                  ),
                  CardInfoItem(
                    title: 'Valid',
                    info: '2020 - 2025',
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Delete Card",
                  style: context.textTheme.labelMedium?.copyWith(
                    color: AppColors.containerColor,
                    fontWeight: FontWeight.w500,
                    fontSize: context.dynamicHeight(0.023),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardInfoItem extends StatelessWidget {
  const CardInfoItem({
    super.key,
    required this.title,
    required this.info,
  });

  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(0.65),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.textTheme.labelSmall?.copyWith(
              color: AppColors.subtitleColor,
              fontWeight: FontWeight.w500,
              fontSize: context.dynamicHeight(0.023),
            ),
          ),
          SizedBox(
            width: context.dynamicWidth(0.05),
          ),
          Text(
            info,
            style: context.textTheme.labelSmall?.copyWith(
              color: AppColors.blackColor,
              fontWeight: FontWeight.w500,
              fontSize: context.dynamicHeight(0.023),
            ),
          ),
        ],
      ),
    );
  }
}
