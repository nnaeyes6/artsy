import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_spacing.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LivestreamView extends ConsumerWidget {
  const LivestreamView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ArtsyContainerWidget(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const Hero(
                  tag: 'Relaxing',
                  child: ArtsySpacingImageHelper.pngJpg(
                    imagePath: ArtsyStrings.relaxingImg,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ArtsyText(
                            text: ArtsyStrings.tag,
                            textStyle: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                    color: ArtsyColors.backgroundColor,
                                    fontFamily: 'Satoshi',
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const ArtsySpacing.width(100),
                      Row(
                        children: [
                          Row(
                            children: [
                              ArtsyContainerWidget(
                                height: 27,
                                width: 49,
                                borderRadius: BorderRadius.circular(5),
                                backgroundColor: const Color(0xff006CA2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ArtsyText(
                                      text: ArtsyStrings.live,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              color:
                                                  ArtsyColors.backgroundColor,
                                              fontFamily: 'Satoshi',
                                              wordSpacing: 1,
                                              letterSpacing: 1,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              const ArtsySpacing.smallWidth(),
                              ArtsyContainerWidget(
                                height: 27,
                                width: 60,
                                borderRadius: BorderRadius.circular(5),
                                backgroundColor: ArtsyColors.backgroundColor
                                    .withOpacity(0.3),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: ArtsyColors.backgroundColor,
                                        size: 18,
                                      ),
                                      ArtsyText(
                                        text: ArtsyStrings.numbOfView,
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                                color:
                                                    ArtsyColors.backgroundColor,
                                                fontFamily: 'Satoshi',
                                                wordSpacing: 1,
                                                letterSpacing: 1,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const ArtsySpacing.bigWidth(),
                          Icon(
                            Icons.close,
                            color: ArtsyColors.backgroundColor,
                            size: 28,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: 50,
                right: 50,
                child: ArtsyText(
                  text: ArtsyStrings.currentBidPrice,
                  textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: ArtsyColors.backgroundColor,
                      fontFamily: 'Satoshi',
                      wordSpacing: 1,
                      letterSpacing: 1,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Align(
                heightFactor: 9.50,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: ArtsyContainerWidget(
                              height: 32,
                              width: 32,
                              child: ClipOval(
                                child: ArtsySpacingImageHelper.pngJpg(
                                  imagePath: ArtsyStrings.bomajangoimg,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    ArtsyText(
                                      text: ArtsyStrings.madambenson,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              color:
                                                  ArtsyColors.backgroundColor,
                                              fontFamily: 'Satoshi',
                                              wordSpacing: 1,
                                              letterSpacing: 1,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    ArtsyText(
                                      text: ArtsyStrings.godAbeg,
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                              color:
                                                  ArtsyColors.backgroundColor,
                                              fontFamily: 'Satoshi',
                                              wordSpacing: 1,
                                              letterSpacing: 1,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    })),
              ),
              Align(
                heightFactor: 31,
                child: Padding(
                  padding: const EdgeInsets.only(right: 80, left: 20),
                  child: ArtsyTextFieldWidget(
                    suffixIcon: Icon(
                      Icons.send_sharp,
                      color: ArtsyColors.backgroundColor,
                    ),
                    focusColor: ArtsyColors.backgroundColor,
                    focusBorderWidth: 1,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    borderRadius: BorderRadius.circular(15),
                    hasBorder: true,
                    backgroundColor: Colors.transparent,
                    borderColor: ArtsyColors.backgroundColor,
                    borderWidth: 3,
                    onSubmitted: (p0) {},
                    hintText: ArtsyStrings.joinConversation,
                    hintTextStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                        color: ArtsyColors.backgroundColor),
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
