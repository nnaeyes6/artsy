
import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/data/model/artsymodel.dart';
import 'package:artsy/services/riverpod_services/data_provider.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_appbar.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_button_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_spacing.dart';
import 'package:artsy/ui/shared/dumb_widgets/menu_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDescriptionView extends ConsumerStatefulWidget {
  final ArtsyModel? artsyModel;
  const ProductDescriptionView({super.key, this.artsyModel});

  @override
  ConsumerState<ProductDescriptionView> createState() =>
      _ProductDescriptionViewState();
}

class _ProductDescriptionViewState
    extends ConsumerState<ProductDescriptionView> {
  bool switchChild = true;
  bool selected = true;
  int index = 0;

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final counters = ref.watch(counterProvider);

    final List descriptiveItems = [
      widget.artsyModel!..toString(),
    ];
    final List listingItems = [
      widget.artsyModel!.isFeatured.toString(),
    ];
    final List statusItems = [
      widget.artsyModel!.status.toString(),
    ];
    return Scaffold(
      drawer: const MenuNavBar(),
      appBar: appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                alignment: WrapAlignment.start,
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
                    text: ArtsyStrings.homeMktEdtrl3,
                    textStyle: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(
                            color: const Color(0xffBCB7B7),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                  ),
                  ArtsyText(
                    text: '/${widget.artsyModel!.galleryTitle.toString()}',
                    textStyle:
                        Theme.of(context).textTheme.headlineLarge?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                  ),
                ],
              ),
            ),
            const ArtsySpacing.height(20),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: ArtsyContainerWidget(
                    width: MediaQuery.of(context).size.width / 1,
                    padding: EdgeInsets.zero,
                    child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: widget.artsyModel!.imageUrl.toString()),
                  ),
                ),
                const ArtsySpacing.height(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ArtsyText(
                        text: widget.artsyModel!.galleryTitle.toString(),
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontFamily: 'Satoshi',
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                      ),
                      ArtsyText(
                        text: ArtsyStrings.price,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontFamily: 'Satoshi',
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const ArtsySpacing.height(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
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
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                      ),
                      const ArtsySpacing.width(10),
                      ArtsyText(
                        text: widget.artsyModel!.galleryId.toString(),
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
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    children: [
                      ArtsyText(
                        text: ArtsyStrings.madeIn,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontFamily: 'Satoshi',
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
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    children: [
                      ArtsyText(
                        text: ArtsyStrings.totalView,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontFamily: 'Satoshi',
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                      ),
                      const ArtsySpacing.width(10),
                      ArtsyText(
                        text: ArtsyStrings.totalView1,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                fontFamily: 'Satoshi',
                                color: ArtsyColors.menuBarTextColor,
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const ArtsySpacing.height(20),
                InkWell(
                  onTap: (() {
                    ref
                        .read(counterProvider.notifier)
                        .update((state) => counters - 1);
                  }),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Row(
                      children: [
                        ArtsyText(
                          text: ArtsyStrings.minus,
                          textStyle: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  color: ArtsyColors.menuBarTextColor,
                                  fontFamily: 'Satoshi',
                                  wordSpacing: 1,
                                  letterSpacing: 1,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                        ),
                        const ArtsySpacing.width(10),
                        ArtsyText(
                          text: counters.toString(),
                          textStyle: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(
                                  fontFamily: 'Satoshi',
                                  color: ArtsyColors.menuBarTextColor,
                                  wordSpacing: 1,
                                  letterSpacing: 1,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                        ),
                        const ArtsySpacing.width(10),
                        InkWell(
                          onTap: (() {
                            ref.read(counterProvider.notifier).update(
                                  (state) => counters + 1,
                                );
                          }),
                          child: ArtsyText(
                            text: ArtsyStrings.plus,
                            textStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    fontFamily: 'Satoshi',
                                    color: ArtsyColors.menuBarTextColor,
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const ArtsySpacing.height(20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      ArtsyButtonWidget(
                        elevation: 0,
                        width: switchChild ? 181 : 100,
                        height: 54,
                        borderColor: ArtsyColors.menuBarTextColor,
                        borderRadius: switchChild
                            ? BorderRadius.zero
                            : BorderRadius.circular(20),
                        color: ArtsyColors.butttonBackgroundColor,
                        onPressed: () {
                          setState(() {
                            switchChild = !switchChild;
                          });
                          // ref
                          //     .read(counterProvider.notifier)
                          //     .update((state) =>CartCheckoutView(cartList: ) -1);
                          // context.go('/cart-checkout-view');
                        },
                        label: switchChild ? ArtsyStrings.addCartBtn : 'Added',
                        labelTextStyle: TextStyle(
                            fontSize: switchChild ? 12 : 16,
                            fontFamily: 'Satoshi',
                            fontWeight: FontWeight.w500,
                            color: ArtsyColors.backgroundColor),
                      ),
                      const ArtsySpacing.mediumWidth(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selected = !selected;
                          });
                        },
                        child: ArtsyContainerWidget(
                          borderThickness: 2,
                          borderColor: ArtsyColors.menuBarTextColor,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: selected ? 1 : 2,
                                  color: ArtsyColors.menuBarTextColor,
                                  style: BorderStyle.solid), //BorderSide
                              bottom: BorderSide(
                                  width: selected ? 1 : 2,
                                  color: ArtsyColors.menuBarTextColor,
                                  style: BorderStyle.solid), //BorderSide
                              left: BorderSide(
                                  width: selected ? 1 : 2,
                                  color: ArtsyColors.menuBarTextColor,
                                  style: BorderStyle.solid), //Borderside
                              right: BorderSide(
                                  width: selected ? 1 : 2,
                                  color: ArtsyColors.menuBarTextColor,
                                  style: BorderStyle.solid), //BorderSide
                            ), //
                            borderRadius: selected
                                ? BorderRadius.circular(4)
                                : BorderRadius.circular(30),
                          ),
                          height: 54,
                          width: 54,
                          child: selected
                              ? const Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                )
                              : Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.yellow.shade600,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const ArtsySpacing.height(50),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                buttonHeight: 80,
                buttonWidth: MediaQuery.of(context).size.width,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.white,
                ),
                buttonElevation: 0,
                itemHeight: 300,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 300,
                dropdownWidth: double.infinity,
                dropdownPadding: const EdgeInsets.only(bottom: 20),
                icon: const Icon(Icons.keyboard_arrow_down),
                dropdownDecoration: BoxDecoration(
                  color: ArtsyColors.backgroundColor,
                ),
                hint: Text(
                  ArtsyStrings.description,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    color: ArtsyColors.menuBarTextColor,
                  ),
                ),
                items: descriptiveItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Wrap(
                            children: [
                              Text(
                                item,
                                style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    color: ArtsyColors.menuBarTextColor,
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    // selectedValue = value as String;
                  });
                },
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                buttonHeight: 80,
                buttonWidth: MediaQuery.of(context).size.width,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  color: Colors.white,
                ),
                buttonElevation: 0,
                itemHeight: 300,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: double.infinity,
                dropdownPadding: null,
                icon: const Icon(Icons.keyboard_arrow_down),
                dropdownDecoration: BoxDecoration(
                  color: ArtsyColors.backgroundColor,
                ),
                hint: Text(
                  ArtsyStrings.listings,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    color: ArtsyColors.menuBarTextColor,
                  ),
                ),
                items: listingItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                color: ArtsyColors.menuBarTextColor,
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    // selectedValue = value as String;
                  });
                },
              ),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                buttonHeight: 80,
                buttonWidth: MediaQuery.of(context).size.width,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.white,
                ),
                buttonElevation: 0,
                itemHeight: 300,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: double.infinity,
                dropdownPadding: null,
                icon: const Icon(Icons.keyboard_arrow_down),
                dropdownDecoration: BoxDecoration(
                  color: ArtsyColors.backgroundColor,
                ),
                hint: Text(
                  ArtsyStrings.status,
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    color: ArtsyColors.menuBarTextColor,
                  ),
                ),
                items: statusItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(
                                fontFamily: 'Satoshi',
                                color: ArtsyColors.menuBarTextColor,
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    // selectedValue = value as String;
                  });
                },
              ),
            ),
            const ArtsySpacing.height(150),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  ArtsyText(
                    text: ArtsyStrings.colllections,
                    textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
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
            const ArtsySpacing.height(10),
            ArtsyContainerWidget(
              margin: const EdgeInsets.all(8),
              borderThickness: 2,
              borderColor: ArtsyColors.menuBarTextColor,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 1,
                      color: ArtsyColors.menuBarTextColor,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 1,
                      color: ArtsyColors.menuBarTextColor,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 1,
                      color: ArtsyColors.menuBarTextColor,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 1,
                      color: ArtsyColors.menuBarTextColor,
                      style: BorderStyle.solid), //BorderSide
                ), //
              ),
              height: 509,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        selected
                            ? const Icon(
                                Icons.favorite_border,
                                size: 30,
                              )
                            : const Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.yellowAccent,
                              ),
                      ],
                    ),
                  ),
                  ArtsyContainerWidget(
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            ArtsyStrings.blkandwt,
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: ArtsyColors.backgroundColor,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: ArtsyColors.backgroundColor,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ArtsyText(
                          text: ArtsyStrings.sassy,
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
                        Row(
                          children: [
                            const Icon(Icons.production_quantity_limits),
                            const ArtsySpacing.mediumWidth(),
                            ArtsyText(
                              text: ArtsyStrings.time,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const ArtsySpacing.height(200),
          ]),
        ),
      ),
    );
  }
}
