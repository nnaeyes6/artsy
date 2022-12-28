import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_appbar.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_button_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_spacing.dart';
import 'package:artsy/ui/shared/dumb_widgets/menu_bar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropsView extends StatefulWidget {
  const DropsView({super.key});

  @override
  State<DropsView> createState() => _DropsViewState();
}

class _DropsViewState extends State<DropsView> {
  final List<String> items = [
    'Sort by 1',
    'Sort by 2',
    'Sort by 3',
    'Sort by 4',
    'Sort by 5',
    'Sort by 6',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuNavBar(),
      appBar: appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  ArtsyContainerWidget(
                    margin: const EdgeInsets.only(top: 40),
                    child: ArtsyText(
                      textAlign: TextAlign.start,
                      text: ArtsyStrings.upComing,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 30,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            const ArtsySpacing.bigHeight(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Wrap(
                children: [
                  ArtsyContainerWidget(
                    child: ArtsyText(
                      text: ArtsyStrings.turnNotification,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 23,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const ArtsySpacing.bigHeight(),
            ArtsyContainerWidget(
              hasBorder: true,
              borderColor: ArtsyColors.menuBarTextColor,
              backgroundColor: Colors.transparent,
              height: 44,
              borderThickness: 1,
              margin: const EdgeInsets.only(left: 8, right: 8),
              width: 202,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.notifyMe,
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontFamily: 'Satoshi',
                              wordSpacing: 1,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const ArtsySpacing.height(10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        buttonHeight: 50,
                        buttonWidth: 100,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        buttonDecoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        buttonElevation: 0,
                        itemHeight: 40,
                        itemPadding: const EdgeInsets.only(left: 14, right: 14),
                        dropdownMaxHeight: 200,
                        dropdownWidth: 200,
                        dropdownPadding: null,
                        dropdownDecoration: BoxDecoration(
                          color: ArtsyColors.floatingActionbtnColor,
                        ),
                        hint: Text(
                          'Sort by',
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
                  ),
                ],
              ),
            ),
            const ArtsySpacing.height(20),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ArtsyContainerWidget(
                          height: 225,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(ArtsyStrings.forestMask),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              const ArtsySpacing.bigHeight(),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ArtsyContainerWidget(
                                      backgroundColor: const Color(0xff4693ED),
                                      height: 23,
                                      width: 102,
                                      borderRadius: BorderRadius.circular(8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ArtsyText(
                                            text: ArtsyStrings.upcoming,
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                    color: ArtsyColors
                                                        .backgroundColor,
                                                    fontFamily: 'Satoshi',
                                                    wordSpacing: 1,
                                                    letterSpacing: 1,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const ArtsySpacing.height(90),
                              ArtsyContainerWidget(
                                hasBorder: true,
                                borderColor: ArtsyColors.backgroundColor,
                                backgroundColor: Colors.transparent,
                                height: 70,
                                borderThickness: 1,
                                margin:
                                    const EdgeInsets.only(left: 8, right: 8),
                                width: MediaQuery.of(context).size.width / 1,
                                borderRadius: BorderRadius.circular(8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ArtsyText(
                                            text: ArtsyStrings.timeRemaing,
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                    color: ArtsyColors
                                                        .backgroundColor,
                                                    fontFamily: 'Satoshi',
                                                    wordSpacing: 1,
                                                    letterSpacing: 1,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ArtsyText(
                                            text: ArtsyStrings.hoursTime,
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                    color: ArtsyColors
                                                        .backgroundColor,
                                                    fontFamily: 'Satoshi',
                                                    wordSpacing: 1,
                                                    letterSpacing: 1,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ArtsySpacing.bigHeight(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            ArtsyText(
                              text: ArtsyStrings.watTme,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: ArtsyColors.menuBarTextColor,
                                      fontFamily: 'Satoshi',
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      ArtsySpacing.height(15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            ArtsyText(
                              text: ArtsyStrings.eyo,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: ArtsyColors.menuBarTextColor,
                                      fontFamily: 'Satoshi',
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const ArtsySpacing.height(15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Wrap(
                          children: [
                            ArtsyText(
                              textAlign: TextAlign.start,
                              text: ArtsyStrings.lorem,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: ArtsyColors.menuBarTextColor,
                                      fontFamily: 'Satoshi',
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                            ),
                            const ArtsySpacing.width(10),
                          ],
                        ),
                      ),
                      const ArtsySpacing.height(15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            ArtsyText(
                              text: ArtsyStrings.creator,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: ArtsyColors.menuBarTextColor,
                                      fontFamily: 'Satoshi',
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                            ),
                            const ArtsySpacing.height(15),
                            ArtsyText(
                              text: ArtsyStrings.craetorName,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: const Color(0xff006CA2),
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const ArtsySpacing.height(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            ArtsyText(
                              text: ArtsyStrings.getNotified,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                      color: Color(0xff006CA2),
                                      fontFamily: 'Satoshi',
                                      wordSpacing: 1,
                                      letterSpacing: 1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      const ArtsySpacing.height(30),
                    ],
                  );
                }),
            const ArtsySpacing.height(100),
          ]),
        ),
      ),
    );
  }
}
