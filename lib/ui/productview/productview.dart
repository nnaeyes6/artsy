import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/data/model/artsymodel.dart';
import 'package:artsy/services/riverpod_services/data_provider.dart';
import 'package:artsy/ui/homeview/home_view_model.dart';
import 'package:artsy/ui/product_description_view/product_descriptionview.dart';
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
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductView extends ConsumerStatefulWidget {
  const ProductView({super.key});

  @override
  ConsumerState<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends ConsumerState<ProductView> {
  final List<String> items = [
    'Filter1',
    'Filter2',
    'Filter3',
    'Filter4',
    'Filter5',
    'Filter6',
  ];
  String? selectedValue;
  bool switchChild = true;

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(artsyDataProvider);
    return Scaffold(
      drawer: const MenuNavBar(),
      appBar: appBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                      text: ArtsyStrings.homeMktEdtrl3,
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Row(
                  children: [
                    ArtsyText(
                      text: ArtsyStrings.showResult,
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                              color: const Color(0xffBCB7B7),
                              fontFamily: 'Satoshi',
                              wordSpacing: 1,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              fontSize: 16),
                    ),
                  ],
                ),
              ),
              const ArtsySpacing.height(30),
              ArtsyContainerWidget(
                margin: const EdgeInsets.all(15),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15), //
                        boxShadow: [
                      BoxShadow(
                        blurStyle: BlurStyle.outer,
                        color: ArtsyColors.backgroundColor,
                        offset: const Offset(
                          10,
                          10.0,
                        ),
                        blurRadius: 5.0,
                        spreadRadius: 10,
                      ),
                    ]),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            buttonHeight: 50,
                            buttonWidth: 100,
                            buttonPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            buttonDecoration: const BoxDecoration(
                              color: Colors.white,
                            ),
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
                              'Filter',
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
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            buttonHeight: 50,
                            buttonWidth: 100,
                            icon: const Icon(
                              Icons.keyboard_arrow_down,
                            ),
                            buttonPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            buttonDecoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            buttonElevation: 0,
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return  ProductDescriptionView(artsyModel: artsyList[index],);
                              }));
                            }),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28.0),
                                  child: ArtsyContainerWidget(
                                    width:
                                        MediaQuery.of(context).size.width / 1,
                                    padding: EdgeInsets.zero,
                                    child: CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl: artsyList[index]
                                            .imageUrl
                                            .toString()),
                                  ),
                                ),
                                const ArtsySpacing.height(10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 28),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ArtsyText(
                                        text: artsyList[index]
                                            .galleryTitle
                                            .toString(),
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .labelLarge
                                            ?.copyWith(
                                                color: ArtsyColors
                                                    .menuBarTextColor,
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
                                                color: ArtsyColors
                                                    .menuBarTextColor,
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
                              ],
                            ),
                          );
                        });
                  },
                  error: ((error, stackTrace) => Text(error.toString())),
                  loading: (() => const Center(
                        child: CircularProgressIndicator(),
                      ))),
              const ArtsySpacing.height(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                          icon: const Icon(
                            Icons.arrow_circle_right_outlined,
                            size: 50,
                          )),
                    )
                  ],
                ),
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
              const ArtsySpacing.height(50),
            ],
          ),
        ),
      ),
    );
  }
}
