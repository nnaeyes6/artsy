import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/ui/livestreamview/livestreamview.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_appbar.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_button_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_spacing.dart';
import 'package:artsy/ui/shared/dumb_widgets/menu_bar.dart';
import 'package:flutter/material.dart';

class AuctionView extends StatefulWidget {
  const AuctionView({super.key});

  @override
  State<AuctionView> createState() => AuctionViewState();
}

class AuctionViewState extends State<AuctionView> {
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
                    child: ArtsyText(
                      textAlign: TextAlign.start,
                      text: ArtsyStrings.productOverview,
                      textStyle: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontSize: 20,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const ArtsySpacing.height(20),
            ArtsyContainerWidget(
              width: MediaQuery.of(context).size.width,
              height: 228,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (contex) {
                          return const LivestreamView();
                        }));
                      }),
                      child: Stack(
                        children: [
                          const ArtsyContainerWidget(
                            height: 190,
                            width: 228,
                            child: Hero(
                              tag: 'Relaxing',
                              child: ArtsySpacingImageHelper.pngJpg(
                                imagePath: ArtsyStrings.relaxingImg,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 125,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: ArtsyContainerWidget(
                                hasBorder: true,
                                borderColor: ArtsyColors.backgroundColor,
                                backgroundColor: Colors.transparent,
                                height: 44,
                                borderThickness: 1,
                                width: 202,
                                borderRadius: BorderRadius.circular(8),
                                child: Row(
                                  children: [
                                    ArtsyText(
                                      text: ArtsyStrings.hoursTime,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              color:
                                                  ArtsyColors.backgroundColor,
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
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const ArtsySpacing.smallHeight(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  ArtsyText(
                    text: ArtsyStrings.topBids,
                    textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
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
            const ArtsySpacing.height(10),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ArtsyContainerWidget(
                        margin: const EdgeInsets.all(8),
                        // backgroundColor: ArtsyColors.backgroundColor,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15), //
                            boxShadow: [
                              BoxShadow(
                                blurStyle: BlurStyle.outer,
                                color: ArtsyColors.backgroundColor,
                                offset: const Offset(
                                  5,
                                  5.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 10,
                              ),
                            ]),
                        height: MediaQuery.of(context).size.height / 3.6,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, right: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    Icons.favorite_border_rounded,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30.0,
                              ),
                              child: ArtsyContainerWidget(
                                width: MediaQuery.of(context).size.width,
                                child: const ArtsySpacingImageHelper.pngJpg(
                                  fit: BoxFit.contain,
                                  imagePath: ArtsyStrings.boxImg,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ArtsyText(
                                    text: ArtsyStrings.outOfBox,
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                            color: ArtsyColors.menuBarTextColor,
                                            fontFamily: 'Satoshi',
                                            wordSpacing: 1,
                                            letterSpacing: 1,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      ArtsyText(
                                        text: ArtsyStrings.cryptoPrice,
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
                                                fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        child: Row(
                          children: [
                            ArtsyText(
                              text: ArtsyStrings.date,
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
                              text: ArtsyStrings.dateCalender,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
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
                      ArtsyContainerWidget(
                        margin: const EdgeInsets.all(8),
                        // backgroundColor: ArtsyColors.backgroundColor,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), //
                            boxShadow: [
                              BoxShadow(
                                blurStyle: BlurStyle.inner,
                                color: ArtsyColors.backgroundColor,
                                offset: const Offset(
                                  5,
                                  5.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 10,
                              ),
                            ]),
                        height: 85,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ArtsyText(
                                      textAlign: TextAlign.start,
                                      text: ArtsyStrings.currentBid,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              color:
                                                  ArtsyColors.menuBarTextColor,
                                              fontFamily: 'Satoshi',
                                              wordSpacing: 1,
                                              letterSpacing: 1,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        ArtsyText(
                                          textAlign: TextAlign.start,
                                          text: ArtsyStrings.cryptoPrice,
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
                                                  fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    ArtsyButtonWidget(
                                      elevation: 0,
                                      width: 158,
                                      height: 47,
                                      borderColor: ArtsyColors.menuBarTextColor,
                                      borderRadius: BorderRadius.zero,
                                      color: ArtsyColors.butttonBackgroundColor,
                                      onPressed: () {},
                                      label: ArtsyStrings.placeBid,
                                      labelTextStyle: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Satoshi',
                                          fontWeight: FontWeight.w500,
                                          color: ArtsyColors.backgroundColor),
                                    ),
                                    const ArtsySpacing.mediumWidth(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const ArtsySpacing.height(50),
                    ],
                  );
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ArtsyText(
                    text: ArtsyStrings.loadMore,
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: ArtsyColors.menuBarTextColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 50,
                          color: ArtsyColors.menuBarTextColor.withOpacity(0.4),
                        )),
                  )
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
