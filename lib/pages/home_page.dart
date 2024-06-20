import 'package:flutter/material.dart';
import 'package:nike_app/components/bottom_nav_bar.dart';
import 'package:nike_app/pages/cart_page.dart';
import 'package:nike_app/pages/shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
// select index to navigate
  int _selectedIndex = 0;

// method to select index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    //shop page
    // ignore: non_constant_identifier_names
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
  backgroundColor: Colors.grey[900],
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Theme(
            data: Theme.of(context).copyWith(
              dividerTheme: const DividerThemeData(color: Colors.transparent),
            ),
            child: DrawerHeader(
              child: Image.asset(
                'lib/images/nike.png',
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(
                Icons.info_rounded,
                color: Colors.white,
              ),
              title: Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            Icons.logout_outlined,
            color: Colors.white,
          ),
          title: Text(
            'Logout',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  ),
),

      body: _pages[_selectedIndex],
    );
  }
}
