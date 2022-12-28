
import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/data/model/artsymodel.dart';
import 'package:artsy/services/riverpod_services/data_provider.dart';
import 'package:artsy/ui/homeview/home_view_model.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_appbar.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_button_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_container_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_custom_text.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_spacing.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_text_field_widget.dart';
import 'package:artsy/ui/shared/dumb_widgets/menu_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeView extends ConsumerStatefulWidget {
    /// Constructs a [HomeView]

  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: (const Duration(
        milliseconds: 5000,
      )),
    );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutCirc,
    );
    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool switchChild = true;
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(artsyDataProvider);
    // Random random = Random();

    return Scaffold(
      drawer: const MenuNavBar(),
      appBar: appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 10),
                    child: ArtsyText(
                      text: ArtsyStrings.headline,
                      textStyle:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: ArtsyColors.menuBarTextColor,
                              ),
                    ),
                  ),
                  const ArtsySpacing.height(30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: ArtsyText(
                      text: ArtsyStrings.content,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontFamily: 'Satoshi',
                              wordSpacing: 1,
                              letterSpacing: 1,
                              fontSize: 16),
                    ),
                  ),
                ].animate(interval: 3000.ms).fadeIn(duration: 3000.ms),
              ),
              InkWell(
                onTap: () {
                          context.go('/product-view');
                  
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                  child: ArtsyContainerWidget(
                    width: MediaQuery.of(context).size.width / 1,
                    height: 300,
                    padding: EdgeInsets.zero,
                    child: const ArtsySpacingImageHelper.pngJpg(
                      imagePath: ArtsyStrings.pngPath1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ).animate().flipH(
                      curve: Curves.easeInOut,
                      duration: const Duration(seconds: 5),
                      delay: const Duration(seconds: 1),
                    ),
              ),
              const ArtsySpacing.height(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.featured,
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(
                              color: ArtsyColors.menuBarTextColor,
                              fontFamily: 'Satoshi',
                              wordSpacing: 1,
                              letterSpacing: 1,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(30),
              data.when(
                  data: (data) {
                    List<ArtsyModel> artsyList = data.map((e) => e).toList();
                    return ListView.builder(
                        itemCount: artsyList.length,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (() {
                          context.go('/product-view');
                            }),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 18),
                                  child: ArtsyContainerWidget(
                                    height: 255,
                                    width: MediaQuery.of(context).size.width / 1,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: CachedNetworkImageProvider(
                                              artsyList[index]
                                                  .imageUrl
                                                  .toString())),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: ArtsyText(
                                            text:
                                                artsyList[index].title.toString(),
                                            textStyle: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    color: ArtsyColors
                                                        .backgroundColor,
                                                    fontFamily: 'Satoshi',
                                                    wordSpacing: 1.5,
                                                    letterSpacing: 1,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 30),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 100),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                onPressed: (() {}),
                                                icon: Icon(
                                                  Icons
                                                      .arrow_circle_right_outlined,
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                  size: 60,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const ArtsySpacing.height(10),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 60, left: 8),
                                  child: ArtsyText(
                                    textAlign: TextAlign.start,
                                    text: artsyList[index]
                                        .shortDescription
                                        .toString(),
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: ArtsyColors.menuBarTextColor,
                                            fontFamily: 'Satoshi',
                                            wordSpacing: 1,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                  ),
                                ),
                                const ArtsySpacing.height(10),
                                ArtsyContainerWidget(
                                  height: 55,
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: dataList.length,
                                          physics: const ClampingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return ScaleTransition(
                                              scale: animation,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  ArtsyContainerWidget(
                                                    height: 42,
                                                    width: 42,
                                                    child: ClipOval(
                                                      child:
                                                          ArtsySpacingImageHelper
                                                              .pngJpg(
                                                        imagePath: dataList[index]
                                                            .imageUrl
                                                            .toString(),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                      const ArtsySpacing.width(10),
                                      ArtsyText(
                                        textAlign: TextAlign.start,
                                        text: ArtsyStrings.content64,
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurface,
                                                fontFamily: 'Satoshi',
                                                wordSpacing: 1,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                                const ArtsySpacing.height(10),
                                Divider(
                                  height: 2,
                                  thickness: 1,
                                  endIndent: 100,
                                  indent: 10,
                                  color: ArtsyColors.menuBarTextColor,
                                ),
                                const ArtsySpacing.height(30),
                              ],
                            ),
                          );
                        });
                  },
                  error: (((error, stackTrace) =>
                      ArtsyText(text: error.toString()))),
                  loading: (() => const Center(
                      child: CircularProgressIndicator()))) // data.when(
              ,
              ArtsyContainerWidget(
                height: 336,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff4693ED),
                      Color(0xff79C2D2),
                      Color(0xffC05609),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  image: DecorationImage(
                    image: AssetImage(ArtsyStrings.hallWallpaper),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 70),
                  child: Column(children: [
                    Row(
                      children: [
                        const ArtsySpacingImageHelper.pngJpg(
                          imagePath: ArtsyStrings.dot,
                        ),
                        const ArtsySpacing.bigWidth(),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ArtsyText(
                            textAlign: TextAlign.start,
                            text: ArtsyStrings.monaliza,
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                      ],
                    ),
                    const ArtsySpacing.height(10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: ArtsyText(
                            text: ArtsyStrings.oOne,
                            textStyle: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                        const ArtsySpacing.bigWidth(),
                        ArtsyText(
                          text: ArtsyStrings.startOn,
                          textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                        ),
                        const ArtsySpacing.height(20),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          ArtsyText(
                            textAlign: TextAlign.start,
                            text: ArtsyStrings.getExclusive,
                            textStyle: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                          const ArtsySpacing.height(20),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: ArtsyText(
                            text: ArtsyStrings.seeMore,
                            textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                        const ArtsySpacing.bigWidth(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ArtsyButtonWidget(
                            width: 102,
                            height: 36,
                            borderColor: ArtsyColors.backgroundColor,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                            onPressed: () {},
                            label: ArtsyStrings.setReminder,
                            labelTextStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color:
                                    Theme.of(context).colorScheme.onBackground),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              const ArtsySpacing.height(80),
              Divider(
                height: 2,
                thickness: 1,
                color: ArtsyColors.menuBarTextColor,
              ),
              const ArtsySpacing.height(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.exploreMkt,
                      textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: ArtsyColors.menuBarTextColor),
                    ),
                    const ArtsySpacing.bigWidth(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_circle_right_outlined,
                            size: 50, color: ArtsyColors.menuBarTextColor),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: ArtsyColors.menuBarTextColor,
              ),
              const ArtsySpacing.height(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.seeAuctions,
                      textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: ArtsyColors.menuBarTextColor),
                    ),
                    const ArtsySpacing.bigWidth(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_circle_right_outlined,
                            size: 50, color: ArtsyColors.menuBarTextColor),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 2,
                thickness: 1,
                color: ArtsyColors.menuBarTextColor,
              ),
              const ArtsySpacing.height(80),
              Stack(
                children: [
                  ArtsyContainerWidget(
                    height: 251,
                    width: MediaQuery.of(context).size.width / 1,
                    backgroundColor: ArtsyColors.backgroundColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: ArtsyText(
                                  text: ArtsyStrings.editorial,
                                  textStyle: TextStyle(
                                      fontFamily: 'Clash Display',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: ArtsyColors.menuBarTextColor),
                                ),
                              ),
                              const ArtsySpacing.tinyWidth(),
                              InkWell(
                                onTap: (() {}),
                                child: ArtsyText(
                                  text: ArtsyStrings.fashion,
                                  textStyle: TextStyle(
                                      fontFamily: 'Clash Display',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: ArtsyColors.menuBarTextColor),
                                ),
                              ),
                              const ArtsySpacing.tinyWidth(),
                              InkWell(
                                onTap: (() {}),
                                child: ArtsyText(
                                  text: ArtsyStrings.lifestyle,
                                  textStyle: TextStyle(
                                      fontFamily: 'Clash Display',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: ArtsyColors.menuBarTextColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const ArtsySpacing.tinyHeight(),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: ArtsyText(
                            textAlign: TextAlign.start,
                            text: ArtsyStrings.topCreator,
                            textStyle: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: ArtsyColors.menuBarTextColor),
                          ),
                        ),
                        const ArtsySpacing.height(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: ArtsyText(
                            text: ArtsyStrings.topCreatorContent,
                            textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Theme.of(context).colorScheme.onSurface),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 50,
                    child: Image.asset(dataList[3].imageUrl.toString()),

                    // ArtsySpacingImageHelper.pngJpg(
                    //   imagePath: ArtsyStrings.prettyGirl,
                  ),
                ],
              ),
              const ArtsySpacing.height(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.newsLetter,
                      textStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: ArtsyColors.menuBarTextColor),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.subscribeDaily,
                      textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ArtsyColors.menuBarTextColor),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(20),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 54, bottom: 20),
                child: ArtsyTextFieldWidget(
                  focusColor: ArtsyColors.menuBarTextColor,
                  backgroundColor: ArtsyColors.backgroundColor,
                  borderWidth: 3,
                  onSubmitted: (p0) {},
                  hintText: ArtsyStrings.enterEmail,
                  hintTextStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: ArtsyColors.menuBarTextColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    ArtsyContainerWidget(
                      height: 70,
                      width: MediaQuery.of(context).size.width / 1.18,
                      child: AnimatedAlign(
                        alignment: switchChild
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        duration: const Duration(seconds: 1),
                        child: ArtsyButtonWidget(
                          elevation: 0,
                          width: switchChild
                              ? 181
                              : MediaQuery.of(context).size.width / 1.18,
                          height: switchChild ? 54 : 65,
                          borderColor: ArtsyColors.menuBarTextColor,
                          borderRadius: BorderRadius.zero,
                          color: switchChild
                              ? ArtsyColors.menuBarTextColor
                              : ArtsyColors.backgroundColor,
                          onPressed: () {
                            setState(() {
                              switchChild = !switchChild;
                            });
                          },
                          label: switchChild
                              ? ArtsyStrings.subscribeBtn
                              : ArtsyStrings.subscribedBtn,
                          labelTextStyle: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 12,
                              fontWeight: switchChild
                                  ? FontWeight.w400
                                  : FontWeight.w800,
                              color: switchChild
                                  ? ArtsyColors.backgroundColor
                                  : ArtsyColors.menuBarTextColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(Icons.email_outlined),
                    const ArtsySpacing.smallWidth(),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: ArtsyText(
                        textAlign: TextAlign.start,
                        text: ArtsyStrings.email,
                        textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ArtsyColors.menuBarTextColor),
                      ),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(Icons.location_on_outlined),
                    const ArtsySpacing.smallWidth(),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: ArtsyText(
                        textAlign: TextAlign.start,
                        text: ArtsyStrings.location,
                        textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ArtsyColors.menuBarTextColor),
                      ),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(20),
            ],
          ),
        ),
      ),
    );
  }
}
