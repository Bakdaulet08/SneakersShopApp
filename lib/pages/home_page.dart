import 'package:flutter/material.dart';
import 'package:shop_app/components/bottom_nav_bar.dart';
import 'package:shop_app/pages/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            // Логотип
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.transparent, // Убираем полоску сверху
              ),

              child: Image.asset(
                'lib/images/nikeLogo.png',
                color: Colors.white,
                width: 120,
              ),
            ),
            // Верхние элементы (Home и About)
            Expanded(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text('H O M E', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text('A B O U T', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            // Logout внизу
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('L O G O U T', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );


  }
}
