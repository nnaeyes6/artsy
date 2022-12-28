import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/ui/paymentview/paymentview.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_appbar.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_button_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_spacing.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_text_field_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CartProceedToCheckoutView extends StatefulWidget {
  const CartProceedToCheckoutView({super.key});

  @override
  State<CartProceedToCheckoutView> createState() =>
      _CartProceedToCheckoutViewState();
}

class _CartProceedToCheckoutViewState extends State<CartProceedToCheckoutView> {
  final List<String> items = [
    'Filter1',
    'Filter2',
    'Filter3',
    'Filter4',
    'Filter5',
    'Filter6',
  ];
  String? selectedValue;

  bool _value = false;
  void onBoxChecked() {
    setState(() {
      _value = !_value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuNavBar(),
      appBar: appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: [
                const ArtsySpacing.height(30),
                Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.homeMktEdtrl,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: const Color(0xffBCB7B7),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.homeMktEdtrl2,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: const Color(0xffBCB7B7),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.shipping,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const ArtsySpacing.height(30),
                Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.yourEmail,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const ArtsySpacing.height(15),
                ArtsyTextFieldWidget(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  borderRadius: BorderRadius.circular(10),
                  hasBorder: true,
                  backgroundColor: ArtsyColors.backgroundColor,
                  borderColor: ArtsyColors.lightWhiteBackgroundColor,
                  borderWidth: 3,
                  onSubmitted: (p0) {},
                  hintText: ArtsyStrings.email,
                  hintTextStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w400,
                      color: ArtsyColors.menuBarTextColor),
                ),
                const ArtsySpacing.height(5),
                Row(
                  children: [
                    Checkbox(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      value: _value,
                      onChanged: ((value) => onBoxChecked()),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.getUpdate,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const ArtsySpacing.height(15),
                Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.chooseWallet,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const ArtsySpacing.height(15),
                ArtsyContainerWidget(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  hasBorder: true,
                  borderColor: ArtsyColors.menuBarTextColor,
                  backgroundColor: ArtsyColors.backgroundColor,
                  borderThickness: 1,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          icon: const Icon(Icons.keyboard_arrow_down),
                          buttonHeight: 50,
                          buttonWidth: 100,
                          buttonPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          itemHeight: 40,
                          itemPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 200,
                          dropdownWidth: 200,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            color: ArtsyColors.floatingActionbtnColor,
                          ),
                          hint: Text(
                            '',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const ArtsySpacing.height(30),
                Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.city,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const ArtsySpacing.height(15),
                ArtsyContainerWidget(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  hasBorder: true,
                  borderColor: ArtsyColors.menuBarTextColor,
                  backgroundColor: ArtsyColors.backgroundColor,
                  borderThickness: 1,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          icon: const Icon(Icons.keyboard_arrow_down),
                          buttonHeight: 50,
                          buttonWidth: 100,
                          buttonPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          itemHeight: 40,
                          itemPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 200,
                          dropdownWidth: 200,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            color: ArtsyColors.floatingActionbtnColor,
                          ),
                          hint: Text(
                            '',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const ArtsySpacing.height(30),
                Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.country,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const ArtsySpacing.height(15),
                ArtsyContainerWidget(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  hasBorder: true,
                  borderColor: ArtsyColors.menuBarTextColor,
                  backgroundColor: ArtsyColors.backgroundColor,
                  borderThickness: 1,
                  borderRadius: BorderRadius.circular(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          icon: const Icon(Icons.keyboard_arrow_down),
                          buttonHeight: 50,
                          buttonWidth: 100,
                          buttonPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          itemHeight: 40,
                          itemPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 200,
                          dropdownWidth: 200,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            color: ArtsyColors.floatingActionbtnColor,
                          ),
                          hint: Text(
                            '',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const ArtsySpacing.height(30),
                Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.postalCode,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const ArtsySpacing.height(15),
                ArtsyTextFieldWidget(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  borderRadius: BorderRadius.circular(10),
                  hasBorder: true,
                  backgroundColor: ArtsyColors.backgroundColor,
                  borderColor: ArtsyColors.lightWhiteBackgroundColor,
                  borderWidth: 3,
                  onSubmitted: (p0) {},
                  hintTextStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w400,
                      color: ArtsyColors.menuBarTextColor),
                ),
                const ArtsySpacing.height(30),
                Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.phoneNumber,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const ArtsySpacing.height(15),
                ArtsyTextFieldWidget(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  borderRadius: BorderRadius.circular(10),
                  hasBorder: true,
                  backgroundColor: ArtsyColors.backgroundColor,
                  borderColor: ArtsyColors.lightWhiteBackgroundColor,
                  borderWidth: 3,
                  onSubmitted: (p0) {},
                  hintTextStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w400,
                      color: ArtsyColors.menuBarTextColor),
                ),
                const ArtsySpacing.height(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ArtsyButtonWidget(
                      elevation: 0,
                      width: 280,
                      height: 60,
                      borderRadius: BorderRadius.zero,
                      color: ArtsyColors.butttonBackgroundColor,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const PaymentView();
                        }));
                      },
                      label: ArtsyStrings.proceed2payment,
                      labelTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ArtsyColors.backgroundColor),
                    ),
                  ],
                ),
                const ArtsySpacing.height(30),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: ArtsyText(
                          textAlign: TextAlign.start,
                          text: ArtsyStrings.goBack2cart,
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff006CA2)),
                        ),
                      ),
                    ],
                  ),
                ),
                const ArtsySpacing.height(50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
