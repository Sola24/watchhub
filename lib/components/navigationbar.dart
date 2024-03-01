import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {


  const NavBar({Key? key, required this.idx}) : super(key: key);

  final int idx;

  @override
  State<NavBar> createState() => _NavBar();
}

class _NavBar extends State<NavBar> {
  var _pageOptions = ['/', '/FavouritesPage', '/CartPage','/ProfilePage'];


  void _onItemTapped(int index) {
    if (index != widget.idx)
      Navigator.pushReplacementNamed(context, _pageOptions[index]);
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      color: Colors.transparent,
      child: GNav(
        selectedIndex: widget.idx,
        iconSize: 30,
        tabBorderRadius: 28,
        backgroundColor: Color(0xff060C0F),
        color: Colors.white60,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey,
        gap: 8,
        onTabChange: _onItemTapped,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        tabs: [
          GButton(icon: Icons.home_outlined, text: 'Home' ,),
          GButton(icon: Icons.favorite_border, text: 'WishList',),
          GButton(icon: Icons.shopping_cart_outlined, text: 'Cart',),
          GButton(icon: Icons.person_3_outlined, text: 'Profile',),
        ],
      ),
    );

  }
}



