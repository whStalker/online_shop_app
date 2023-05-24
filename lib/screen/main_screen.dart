import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_shop_app/screen/home_page.dart';
import 'package:online_shop_app/screen/search_page.dart';
import 'package:online_shop_app/screen/shopping_cart_page.dart';
import 'package:online_shop_app/screen/user_profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const List<Widget> _screenWidget = [
    HomePage(),
    SearchPage(),
    ShoppingCartPage(),
    UserProfilePage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Test'),
      // ),
      body: Container(
        child: _screenWidget[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house),
            label: '',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
            label: '',
            // backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.cartShopping),
            label: '',
            // backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: '',
            // backgroundColor: Colors.indigo,
          ),
        ],
      ),
    );
  }
}
