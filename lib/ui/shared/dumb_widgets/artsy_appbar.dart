import 'package:artsy/core/constants/artsy_strings.dart';
import 'package:artsy/ui/cart_checkout/cart_checkout.dart';
import 'package:artsy/ui/shared/dumb_widgets/artsy_image_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

PreferredSizeWidget appBar(context) {
  return AppBar(
    actions: [
      const Padding(
        padding: EdgeInsets.only(right: 100),
        child: ArtsySpacingImageHelper.svg(
          imagePath: ArtsyStrings.artsyLogoSvgPath,
        ),
      ),
      IconButton(
        onPressed: (() {}),
        icon: const Icon(Icons.search),
      ),
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CartCheckoutView();
          }));
        },
        child: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: ArtsySpacingImageHelper.svg(
            imagePath: ArtsyStrings.cartSvgPath,
          ),
        ),
      ),
    ],
    iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onSurface),
  );
}
