import 'package:flutter/material.dart';

import '../components/navigationbar.dart';

class CartsPage extends StatefulWidget {
  const CartsPage({super.key});

  @override
  State<CartsPage> createState() => _CartsPageState();
}

class _CartsPageState extends State<CartsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavBar(idx: 2,),
      ),
    );
  }

}
