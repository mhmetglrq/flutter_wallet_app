import 'package:flutter/material.dart';
import 'package:flutter_wallet_app/config/extensions/context_extension.dart';

import '../../../config/items/app_colors.dart';

List<Map<String, dynamic>> keyboardList = [
  {"value": "1"},
  {"value": "2"},
  {"value": "3"},
  {"value": "4"},
  {"value": "5"},
  {"value": "6"},
  {"value": "7"},
  {"value": "8"},
  {"value": "9"},
  {"value": "00"},
  {"value": "0"},
  {"value": null, "icon": Icons.close_rounded},
];

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  String _value = "";
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
        child: Padding(
          padding: context.paddingAllDefault,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                child: Text(
                  '\$ $_value',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.darkPurpleColor,
                    fontSize: context.dynamicHeight(0.035),
                  ),
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.05),
              ),
              DropdownMenu(
                width: context.dynamicWidth(0.6),
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: AppColors.grayColor,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: context.dynamicWidth(0.1),
                    vertical: context.dynamicHeight(0.02),
                  ),
                ),
                trailingIcon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.darkPurpleColor,
                ),
                initialSelection: "Please select a card",
                dropdownMenuEntries: const [
                  DropdownMenuEntry(
                    value: "Card 1",
                    label: "Card 1",
                  ),
                  DropdownMenuEntry(
                    value: "Card 2",
                    label: "Card 2",
                  ),
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.5),
                width: context.dynamicWidth(1),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.3,
                  ),
                  itemCount: keyboardList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: keyboardList[index]["value"] != null
                          ? InkWell(
                              borderRadius: BorderRadius.circular(15),
                              onTap: () {
                                setState(() {
                                  if (keyboardList[index]["value"] == "00") {
                                    _value += "00";
                                  } else if (keyboardList[index]["value"] ==
                                      null) {
                                    _value =
                                        _value.substring(0, _value.length - 1);
                                  } else {
                                    _value += keyboardList[index]["value"];
                                  }
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(
                                  context.dynamicWidth(0.05),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  keyboardList[index]["value"],
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    color: AppColors.darkPurpleColor,
                                    fontSize: context.dynamicHeight(0.028),
                                  ),
                                ),
                              ),
                            )
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  _value =
                                      _value.substring(0, _value.length - 1);
                                });
                              },
                              icon: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.darkPurpleColor,
                                    width: 2,
                                  ),
                                ),
                                child: Icon(
                                  keyboardList[index]["icon"],
                                  color: AppColors.darkPurpleColor,
                                ),
                              ),
                            ),
                    );
                  },
                ),
              ),
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
                    "Add Transaction",
                    style: context.textTheme.titleLarge?.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
