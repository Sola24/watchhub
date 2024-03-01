import 'package:WatchHub/provider/favouriteProvider.dart';
import 'package:WatchHub/screens/cart.dart';
import 'package:WatchHub/screens/profile.dart';
import 'package:WatchHub/screens/wishList.dart';
import 'package:flutter/material.dart';
import 'package:WatchHub/screens/home.dart';
import 'package:provider/provider.dart';




void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavouritesProvider(),
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var IsDark = MediaQuery.of(context).platformBrightness == Brightness.light;
    var Color = IsDark ? Colors.white : Colors.black;
    return MaterialApp(
      routes: {
        '/FavouritesPage': (context) => WishListPage(),
        '/CartPage': (context) => CartsPage(),
        '/ProfilePage': (context) => ProfilePage(),
      },
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color ,
        body: HomePage(),
        ),
      )
    );
  }
}
