import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';

import '../components/toggleIconButton.dart';
class ShowProductDetails extends StatefulWidget {
   ShowProductDetails({super.key, required this.image, required this.name, required this.about, required this.price, required this.rating});
  final String image;
  final String name;
  final String about;
  final double price;
  late final double rating;

  @override
  State<ShowProductDetails> createState() => _ShowProductDetailsState();
}

class _ShowProductDetailsState extends State<ShowProductDetails> {
  bool click = false;
  int count = 0;
  void _add(){
    setState(() {
      count++;
    });
  }
  void _subtract(){
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(LineAwesomeIcons.angle_left,)),
            centerTitle: true,
             backgroundColor: Colors.white,
            title: Text('Product Details',    style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily:'Baskervville-Italic'
            ),),
          ),
          body: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Stack(
                        children: [
                        Container(
                            height: 200,
                        width: 300,
                        child: PhotoView(
                            backgroundDecoration: BoxDecoration(color: Colors.white),
                            imageProvider: AssetImage(widget.image)
                        )
                        ),
                        Positioned(
                          top: 0,
                          left: 255,
                          child: toggleIconButton(onFalseSnackBarContent: 'Added to WishList', onFalseSnackBarLabel: 'Remove', onTrueSnackBarContent: 'Removed from WishList', onTrueSnackBarLabel: 'Add', onFalseIcon: LineAwesomeIcons.check_circle, onTrueIcon: LineAwesomeIcons.check_circle, onFalseColor: Colors.black, onTrueColor: Colors.yellow, iconSize: 30,),
                        )
                         ]
                     )
                      ],
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 10),
                  child: Text(widget.name,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily:'Baskervville'
                    ),),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 10),
                      child: Text('Price:',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily:'Baskervville'
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 10),
                      child:Text(NumberFormat.simpleCurrency(name: 'NGN',decimalDigits: 2).format(widget.price),style: TextStyle(color: Color(0xff060C0F),fontWeight:FontWeight.bold)),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right : 10),
                        child: Row(
                          children: [
                            Text(widget.rating.toString(),style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontFamily:'Baskervville'
                            ),),
                            Text(' stars',style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontFamily:'Baskervville'
                            ),),
                          ],
                        ),
                      ),
                     RatingBar.builder(
                       ignoreGestures: true,
                       minRating: 0,
                         itemSize: 20,
                         allowHalfRating: true,
                         maxRating: 5,
                         initialRating: widget.rating,
                         itemPadding: EdgeInsets.symmetric(horizontal: 2),
                         itemBuilder: (context,_)=> Icon(LineAwesomeIcons.star_1,color: Colors.amber,size: 10,),
                         onRatingUpdate: (rating)
                => setState(() {
                  widget.rating = rating;
                })
                     )
                    ],
                  ),
                ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 15),
              child: Text('In stock',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily:'Baskervville'
                ),),
            ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 15),
                  child: Text('About',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily:'Baskervville'
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 10,right: 20,bottom: 10),
                  child: Text(widget.about,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        fontFamily:'Baskervville'
                    ),),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Container(
                            width: 125,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Color(0xffC0C0C0),
                                border: Border.all(color:Color(0xffC0C0C0)),
                                borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                            child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.add,size: 20,),
                                    onPressed: _add
                                ),
                                Text('$count',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.normal,
                                    fontFamily:'Baskervville'
                                ),),
                                IconButton(
                                  icon: Icon(Icons.remove,size: 20,),
                                  onPressed:(){
                                    _subtract();
                                    count<0? showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        actions: [
                                          TextButton(onPressed: (){
                                            Navigator.pop(context);
                                            setState(() {
                                              count =0;
                                            });
                                            },
                                              child: Text('OK',style: TextStyle(color: Colors.black,fontFamily:'Baskervville')))
                                        ],
                                        title: Text('value cannot be less than zero',style: TextStyle(color: Colors.black,fontFamily:'Baskervville')),
                                      ),
                                    ):null;

                                  }
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:100.0),
                          child:
                          click == false ? GestureDetector(
                            onTap:(){
                              setState(() {
                                click = !click;
                                if(count == 0) {
                                  count = 1;
                                }
                              });
                              final snackbarAdd = SnackBar(
                                content: Text('Added to Cart'),
                                duration: Duration(seconds: 1),
                                action: SnackBarAction(
                                  label: 'Remove',
                                  onPressed: (){
                                    setState(() {
                                      click = !click;
                                      count = 0;
                                    });
                                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                  },
                                ),
                              );
                              final snackbarRemove = SnackBar(
                                content: Text('Removed from Cart'),
                                duration: Duration(seconds: 1),
                                action: SnackBarAction(
                                  label: 'Add',
                                  onPressed: (){
                                    setState(() {
                                      click = !click;
                                      if(count == 0) {
                                        count = 1;
                                      }
                                    });
                                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                  },
                                ),
                              );
                              click == true ? ScaffoldMessenger.of(context).showSnackBar(snackbarAdd):ScaffoldMessenger.of(context).showSnackBar(snackbarRemove);


                            },
                            child: Container(
                                width: 130,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: Color(0xffC0C0C0),
                                    border: Border.all(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Add to Cart',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          fontFamily:'Baskervville'
                                      ),),
                                    Icon(LineAwesomeIcons.shopping_cart,color: Colors.white70,),
                                  ],
                                )
                            ),
                          ):
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                click = !click;
                                count =0;
                                final snackbarAdd = SnackBar(
                                  content: Text('Added to Cart'),
                                  duration: Duration(seconds: 1),
                                  action: SnackBarAction(
                                    label: 'Remove',
                                    onPressed: (){
                                      setState(() {
                                        click = !click;
                                        count = 0;
                                      });
                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                    },
                                  ),
                                );
                                final snackbarRemove = SnackBar(
                                  content: Text('Removed from Cart'),
                                  duration: Duration(seconds: 1),
                                  action: SnackBarAction(
                                    label: 'Add',
                                    onPressed: (){
                                      setState(() {
                                        click = !click;
                                        if(count == 0) {
                                          count = 1;
                                        }
                                      });
                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                    },
                                  ),
                                );
                                click == true ? ScaffoldMessenger.of(context).showSnackBar(snackbarAdd):ScaffoldMessenger.of(context).showSnackBar(snackbarRemove);


                              });
                            },
                            child: Container(
                                width: 130,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: Color(0xffC0C0C0),
                                    border: Border.all(color: Colors.transparent),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Removed from Cart',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          fontFamily:'Baskervville'
                                      ),),
                                    Icon(LineAwesomeIcons.shopping_cart,color: Colors.white70,size: 20,),
                                  ],
                                )

                            ),
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
