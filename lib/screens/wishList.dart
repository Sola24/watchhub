import 'package:WatchHub/components/navigationbar.dart';
import 'package:WatchHub/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';


import '../models/watchBrands.dart';
import '../provider/favouriteProvider.dart';
class WishListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FavouritesProvider>(
        builder: (context, favouritesProvider, child) {
          List<WatchBrandsModel> favouriteItems = favouritesProvider
              .favouriteItems;

          return favouriteItems.isEmpty
              ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('There are no favorites added yet.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,fontFamily:'Baskervville'),),
                SizedBox(height: 15,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:Color(0xffC0C0C0),
                      side: BorderSide.none,
                      shape: StadiumBorder()
                  ),
                  onPressed: () {
                    // Navigate back to the home page
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context) => HomePage()
                        )
                    );
                  },
                  child: Text('Start Shopping',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily:'Baskervville'),),
                ),
              ],
            ),
          )
              : ListView.builder(
              itemCount: favouriteItems.length,
              itemBuilder: (context,index)=>
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border:Border.all(color:Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(8),
                          title: Text(favouriteItems[index].name),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(favouriteItems[index].brand),
                              Text(NumberFormat.simpleCurrency(name: 'NGN',decimalDigits: 2).format(favouriteItems[index].price),style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold)),
                            ],
                          ),
                          trailing:IconButton(
                            onPressed: () {     // Remove product from favorites using the provider
                              Provider.of<FavouritesProvider>(context, listen: false)
                                  .removeFromFavourites(favouriteItems[index]);
                            },
                            icon: Icon(Icons.remove_circle_outline),),
                          leading: Image.asset(favouriteItems[index].image,height: 100,width: 100,),

                        ),
                      ],
                    ),
                  )
          );
        }
        ),
      bottomNavigationBar: NavBar(idx: 1),
      );
  }
}