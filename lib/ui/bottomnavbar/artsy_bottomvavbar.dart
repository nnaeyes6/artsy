import 'package:artsy/core/constants/artsy_colors.dart';
import 'package:artsy/ui/dropsview/dropsview.dart';
import 'package:artsy/ui/homeview/homeview.dart';
import 'package:artsy/ui/productview/productview.dart';
import 'package:artsy/ui/cart_checkout/cart_checkout.dart';
import 'package:artsy/ui/seachview/search.dart';
import 'package:flutter/material.dart';

class ArtsyBottomNavBar extends StatefulWidget {
  const ArtsyBottomNavBar({super.key});

  @override
  State<ArtsyBottomNavBar> createState() => _ArtsyBottomNavBarState();
}

class _ArtsyBottomNavBarState extends State<ArtsyBottomNavBar> {
  int index = 0;
  List screen = [
    const HomeView(),
    const ProductView(),
    const ArtsySearch(),
    const DropsView(),
    const CartCheckoutView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index = 2;
          });
        },
        backgroundColor: index == 2
            ? ArtsyColors.floatingActionbtnColor
            : ArtsyColors.bottomnavbarSelectedColor,
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 27,
                  color: index == 0
                      ? ArtsyColors.bottomnavColor
                      : ArtsyColors.bottomnavbarSelectedColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Icon(
                  Icons.category,
                  size: 27,
                  color: index == 1
                      ? ArtsyColors.bottomnavColor
                      : ArtsyColors.bottomnavbarSelectedColor,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
                child: Icon(
                  Icons.drag_indicator_sharp,
                  size: 27,
                  color: index == 3
                      ? ArtsyColors.bottomnavColor
                      : ArtsyColors.bottomnavbarSelectedColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
                child: Icon(
                  Icons.shopping_cart,
                  size: 27,
                  color: index == 4
                      ? ArtsyColors.bottomnavColor
                      : ArtsyColors.bottomnavbarSelectedColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: screen[index],
    );
  }
}
