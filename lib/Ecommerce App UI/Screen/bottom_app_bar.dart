import 'package:flutter/material.dart';
import '../Utils/colors.dart';
import 'ecommerce_home_page.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyBottomNavBar> {
  int selectedIndex = 0;
  late final List<Widget> page;

  @override
  void initState() {
    page = [
      const EcommerceHomePage(),
      navBarPage(Icons.location_on),
      navBarPage(Icons.person),
      navBarPage(Icons.shopping_cart),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: primary,
        unselectedItemColor: textGray,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.share_location_sharp),
            label: "Location",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        ],
      ),
      body: page[selectedIndex],
    );
  }

  Widget navBarPage(IconData iconName) {
    return Center(
      child: Icon(
        iconName,
        size: 100,
        color: Colors.black,
      ),
    );
  }
}
