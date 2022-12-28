import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/ui/cart_proceed_to_checkout/cart_proceed_to_chechoutview.dart';
import 'package:artsy/ui/product_description_view/product_descriptionview.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_appbar.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_button_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_spacing.dart';
import 'package:artsy/ui/shared/dumb_widgets/menu_bar.dart';
import 'package:artsy/ui/shared/dumb_widgets/onhover_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartCheckoutView extends ConsumerStatefulWidget {
  const CartCheckoutView({super.key});

  @override
  ConsumerState<CartCheckoutView> createState() => _CartCheckoutViewState();
}

class _CartCheckoutViewState extends ConsumerState<CartCheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuNavBar(),
      appBar: appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ArtsySpacing.largeHeight(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                      text: ArtsyStrings.cart,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(20),
              ArtsyContainerWidget(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), //
                  color: const Color(0xff3A3A3A),
                ),
                height: 50,
                width: 313,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArtsyContainerWidget(
                      height: 38,
                      width: 110,
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27), //
                          color: ArtsyColors.backgroundColor),
                      child: ArtsyText(
                        text: ArtsyStrings.shop,
                        textStyle: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                      ),
                    ),
                    ArtsyContainerWidget(
                      height: 38,
                      width: 110,
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27), //
                        color: const Color(0xff3A3A3A),
                      ),
                      child: ArtsyText(
                        text: ArtsyStrings.schedule,
                        textStyle: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                color: ArtsyColors.backgroundColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(30),
              ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (() {
                        
                      }),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: ArtsyContainerWidget(
                              margin: EdgeInsets.only(bottom: 15),
                              width: 126,
                              height: 126,
                              child: ArtsySpacingImageHelper.pngJpg(
                                imagePath: ArtsyStrings.hugsun,
                              ),
                            ),
                          ),
                          const ArtsySpacing.bigWidth(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ArtsyContainerWidget(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    child: ArtsyText(
                                      text: ArtsyStrings.editorial,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              color:
                                                  ArtsyColors.menuBarTextColor,
                                              fontFamily: 'Satoshi',
                                              wordSpacing: 1,
                                              letterSpacing: 1,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const ArtsySpacing.width(100),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.close_rounded),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  ArtsyText(
                                    text: ArtsyStrings.philomena,
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
                              const ArtsySpacing.height(30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ArtsyContainerWidget(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    hasBorder: true,
                                    borderColor: ArtsyColors.menuBarTextColor,
                                    backgroundColor: Colors.transparent,
                                    height: 32,
                                    borderThickness: 1,
                                    width: 48,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ArtsyText(
                                          text: ArtsyStrings.minus,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                  color: ArtsyColors
                                                      .menuBarTextColor,
                                                  fontFamily: 'Satoshi',
                                                  wordSpacing: 1,
                                                  letterSpacing: 1,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ArtsyContainerWidget(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    hasBorder: true,
                                    borderColor: ArtsyColors.menuBarTextColor,
                                    backgroundColor: Colors.transparent,
                                    height: 32,
                                    borderThickness: 1,
                                    width: 48,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ArtsyText(
                                          text: ArtsyStrings.one,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                  color: ArtsyColors
                                                      .menuBarTextColor,
                                                  fontFamily: 'Satoshi',
                                                  wordSpacing: 1,
                                                  letterSpacing: 1,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ArtsyContainerWidget(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    hasBorder: true,
                                    borderColor: ArtsyColors.menuBarTextColor,
                                    backgroundColor: Colors.transparent,
                                    height: 32,
                                    borderThickness: 1,
                                    width: 48,
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ArtsyText(
                                          text: ArtsyStrings.plus,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                  color: ArtsyColors
                                                      .menuBarTextColor,
                                                  fontFamily: 'Satoshi',
                                                  wordSpacing: 1,
                                                  letterSpacing: 1,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const ArtsySpacing.width(30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ArtsyContainerWidget(
                                        margin:
                                            const EdgeInsets.only(bottom: 20),
                                        child: ArtsyText(
                                          text: ArtsyStrings.priceTag,
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .labelLarge
                                              ?.copyWith(
                                                  color: ArtsyColors
                                                      .menuBarTextColor,
                                                  fontFamily: 'Satoshi',
                                                  wordSpacing: 1,
                                                  letterSpacing: 1,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
              const ArtsySpacing.height(30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArtsyContainerWidget(
                      child: ArtsyText(
                        text: ArtsyStrings.productsInCart,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontFamily: 'Satoshi',
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                      ),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.items,
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontFamily: 'Satoshi',
                              wordSpacing: 1,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArtsyContainerWidget(
                      child: ArtsyText(
                        text: ArtsyStrings.shipping,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontFamily: 'Satoshi',
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                      ),
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
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArtsyContainerWidget(
                      child: ArtsyText(
                        text: ArtsyStrings.total,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontFamily: 'Satoshi',
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                      ),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.totalPrice,
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontFamily: 'Satoshi',
                              wordSpacing: 1,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.bigHeight(),
              const Divider(
                thickness: 2,
                height: 2,
              ),
              const ArtsySpacing.smallHeight(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArtsyContainerWidget(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: ArtsyText(
                        text: ArtsyStrings.grandTotal,
                        textStyle: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                                fontFamily: 'Satoshi',
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                      ),
                    ),
                    ArtsyText(
                      text: ArtsyStrings.grandTotalPrice,
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontFamily: 'Satoshi',
                              wordSpacing: 1,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
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
                          return const CartProceedToCheckoutView();
                        }));
                      },
                      label: ArtsyStrings.proceed2chekout,
                      labelTextStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ArtsyColors.backgroundColor),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(300),
              OnHoverButton(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                    side: BorderSide(
                        width: 2, color: ArtsyColors.butttonBackgroundColor),
                  ),
                  onPressed: () {},
                  child: const ArtsyText(
                    textAlign: TextAlign.start,
                    text: ArtsyStrings.continueShopping,
                    textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff006CA2)),
                  ),
                ),
              ),
              const ArtsySpacing.largeHeight()
            ],
          ),
        ),
      ),
    );
  }
}
