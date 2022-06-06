import 'package:badges/badges.dart';
import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/cart_controller.dart';
import 'package:flutter_application_1/screens/Cart Screen/cart_screen.dart';
import 'package:flutter_application_1/screens/Favourites/screen/fav_screen.dart';
import 'package:flutter_application_1/screens/Home Page/screen/home_screen.dart';
import 'package:flutter_application_1/controllers/landing_controller.dart';
import 'package:flutter_application_1/screens/privacy_screen.dart';
// import 'package:flutter_application_1/screens/search_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/drawer.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  final navbarController = Get.put(NavbarController());
  final cartController = Get.put(CartController());

  final screens = [
    HomeScreen(),
    FavScreen(),
    const PrivacyScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        title: Text(
          'ShoeKart',
          style: GoogleFonts.prompt(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        // actions: [CartIcon()],
      ),
      drawer: const CreateDrawer(),
      body: Obx(() => IndexedStack(
            index: navbarController.selectedIndex.value,
            children: screens,
          )),
      bottomNavigationBar: FancyBottomBar(
        items: [
          FancyItem(
            textColor: Colors.red,
            title: "Home",
            icon: const Icon(Icons.home),
          ),
          FancyItem(
            textColor: Colors.red,
            title: "Favourites",
            icon: const Icon(Icons.favorite_outline),
          ),
          FancyItem(
            textColor: Colors.red,
            title: "Search",
            icon: const Icon(Icons.search),
          ),
          FancyItem(
            textColor: Colors.red,
            title: "Your Cart",
            icon: Badge(
              badgeColor: Colors.transparent,
              badgeContent:
                  Obx(() => Text(cartController.products.length.toString())),
              child: const Icon(
                Icons.shopping_cart,
              ),
            ),
            // const Icon(Icons.shopping_cart_rounded),
          ),
        ],
        type: FancyType.FancyV2,
        onItemSelected: (index) {
          navbarController.changeIndex(index);
        },
        // selectedIndex: bottomNavigationController.selectedIndex.value,
      ),
    );
  }
}
