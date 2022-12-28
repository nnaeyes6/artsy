import 'package:artsy/ui/auctionview/auctionview.dart';
import 'package:artsy/ui/bottomnavbar/artsy_bottomvavbar.dart';
import 'package:artsy/ui/cart_checkout/cart_checkout.dart';
import 'package:artsy/ui/cart_proceed_to_checkout/cart_proceed_to_chechoutview.dart';
import 'package:artsy/ui/dropsview/dropsview.dart';
import 'package:artsy/ui/homeview/homeview.dart';
import 'package:artsy/ui/livestreamview/livestreamview.dart';
import 'package:artsy/ui/loginview/login_view.dart';
import 'package:artsy/ui/paymentview/paymentview.dart';
import 'package:artsy/ui/product_description_view/product_descriptionview.dart';
import 'package:artsy/ui/productview/productview.dart';
import 'package:artsy/ui/signupview/signup_view.dart';
import 'package:artsy/ui/thankyouview/thankyouview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'bottomnav',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ArtsyBottomNavBar();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home-view',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ),
        GoRoute(
          path: 'auction-view',
          builder: (BuildContext context, GoRouterState state) {
            return const AuctionView();
          },
        ),
        GoRoute(
          path: 'cart-checkout-view',
          builder: (BuildContext context, GoRouterState state) {
            return const CartCheckoutView();
          },
        ),
        GoRoute(
          path: 'cart-proceed-to-checkoutview',
          builder: (BuildContext context, GoRouterState state) {
            return const CartProceedToCheckoutView();
          },
        ),
        GoRoute(
          path: 'drop-view',
          builder: (BuildContext context, GoRouterState state) {
            return const DropsView();
          },
        ),
        GoRoute(
          path: 'livestream-view',
          builder: (BuildContext context, GoRouterState state) {
            return const LivestreamView();
          },
        ),
        GoRoute(
          path: 'product-view',
          builder: (BuildContext context, GoRouterState state) {
            return const ProductView();
          },
        ),
        GoRoute(
          path: 'product-description-view',
          builder: (BuildContext context, GoRouterState state) {
            return const ProductDescriptionView();
          },
        ),
        GoRoute(
          path: 'payment-view',
          builder: (BuildContext context, GoRouterState state) {
            return const PaymentView();
          },
        ),
        GoRoute(
          path: 'thankyou-view',
          builder: (BuildContext context, GoRouterState state) {
            return const ThankYouView();
          },
        ),
        GoRoute(
          path: 'signup-view',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpView();
          },
        ),
        GoRoute(
          path: 'login-view',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginView();
          },
        ),
      ],
    ),
  ],
);
