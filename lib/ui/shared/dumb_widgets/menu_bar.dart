import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/ui/auctionview/auctionview.dart';
import 'package:artsy/ui/bottomnavbar/artsy_bottomvavbar.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuNavBar extends StatefulWidget {
  const MenuNavBar({Key? key}) : super(key: key);

  @override
  State<MenuNavBar> createState() => _MenuNavBarState();
}

class _MenuNavBarState extends State<MenuNavBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ArtsyContainerWidget(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Drawer(
          backgroundColor:
              Theme.of(context).colorScheme.copyWith().onBackground,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const ArtsySpacingImageHelper.pngJpg(
                        imagePath: ArtsyStrings.appLogoPath,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ArtsyBottomNavBar();
                          }));
                        },
                        child: ArtsyText(
                          text: ArtsyStrings.home,
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  fontFamily: 'Satoshi',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          context.go('/auction-view');
                        },
                        child: ArtsyText(
                          text: ArtsyStrings.auctions,
                          textStyle: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  fontFamily: 'Satoshi',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: (() {
                          context.go('/product-view');
                        }),
                        child: ArtsyContainerWidget(
                          child: ArtsyText(
                            text: ArtsyStrings.marketPlace,
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    fontFamily: 'Satoshi',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          context.go('/drop-view');
                        },
                        child: ArtsyContainerWidget(
                          child: ArtsyText(
                            text: ArtsyStrings.drops,
                            textStyle: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                    fontFamily: 'Satoshi',
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
