import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_appbar.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_button_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_spacing.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_text_field_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/menu_bar.dart';
import 'package:artsy/ui/thankyouview/thankyouview.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

enum Wallet { wallet1, wallet2 }

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
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

  // ignore: prefer_final_fields
  Wallet? _wallet = Wallet.wallet1;

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
                              fontFamily: 'Satoshi',
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
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.cart2,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: const Color(0xffBCB7B7),
                              fontFamily: 'Satoshi',
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.shipping,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: const Color(0xffBCB7B7),
                              fontSize: 18,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.payment,
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
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.lock,
                          color: ArtsyColors.menuBarTextColor.withOpacity(0.5),
                        )),
                    ArtsyText(
                      text: ArtsyStrings.secureServer,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 16,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const ArtsySpacing.height(15),
                Row(
                  children: [
                    Radio(
                        activeColor: Colors.green.shade400,
                        value: Wallet.wallet1,
                        groupValue: _wallet,
                        onChanged: (value) => setState(() {
                              _wallet = value;
                            })),
                    ArtsyText(
                      text: ArtsyStrings.selectWallet,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const ArtsySpacing.bigHeight(),
                Wrap(
                  children: [
                    ArtsyText(
                      textAlign: TextAlign.start,
                      text: ArtsyStrings.connetWithWallet,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ArtsySpacingImageHelper.pngJpg(
                      imagePath: ArtsyStrings.wallet1Icon1,
                    ),
                    const ArtsySpacingImageHelper.pngJpg(
                      imagePath: ArtsyStrings.wallet1Icon2,
                    ),
                    const ArtsySpacingImageHelper.pngJpg(
                      imagePath: ArtsyStrings.wallet1Icon3,
                    ),
                    const ArtsySpacingImageHelper.pngJpg(
                      imagePath: ArtsyStrings.wallet1Icon1,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const ArtsySpacingImageHelper.pngJpg(
                        imagePath: ArtsyStrings.plusIcon,
                      ),
                    ),
                  ],
                ),
                const ArtsySpacing.height(30),
                Row(
                  children: [
                    ArtsyText(
                      textAlign: TextAlign.start,
                      text: ArtsyStrings.walletType,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
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
                ),
                const ArtsySpacing.height(30),
                Row(
                  children: [
                    ArtsyText(
                      textAlign: TextAlign.start,
                      text: ArtsyStrings.key,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
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
                  hintText: ArtsyStrings.enterYourKey,
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
                      textAlign: TextAlign.start,
                      text: ArtsyStrings.expiryDate,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
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
                      text: ArtsyStrings.safeCode,
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Checkbox(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        value: _value,
                        onChanged: ((value) => onBoxChecked()),
                      ),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.saveWallet,
                      textAlign: TextAlign.start,
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
                ArtsySpacing.largeHeight(),
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
                          return const ThankYouView();
                        }));
                      },
                      label: ArtsyStrings.confirm,
                      labelTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ArtsyColors.backgroundColor),
                    ),
                  ],
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
