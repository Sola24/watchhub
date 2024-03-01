
import 'package:WatchHub/screens/historyPage.dart';
import 'package:WatchHub/screens/trackOrderPage.dart';
import 'package:WatchHub/screens/updateProfilescreen.dart';
import 'package:WatchHub/screens/viewProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../components/navigationbar.dart';
import '../components/profilename.dart';
import 'contactus.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
       children: [
         Container(
           padding: EdgeInsets.all(10),
           child: Column(
             children: [
               SizedBox(
                   width:120,
                   height: 120,
                   child:                       CircleAvatar(maxRadius:100,backgroundImage: AssetImage('assets/images/logo.jpg'))
               ),
               Text('Sola',
                 style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     fontFamily:'Baskervville'
                 ),),
               Text('Solagamil.com',
                 style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     fontFamily:'Baskervville'
                 ),),
               SizedBox(height: 20,),
               SizedBox(
                 width: 200,
                 child: ElevatedButton(
                   onPressed: () {
                     Navigator.push(context,
                         MaterialPageRoute(builder:(context) => ViewProfile()
                         )
                     );
                   },
                   child: Text('View Profile',style: TextStyle(color: Colors.white,fontFamily:'Baskervville'),),
                   style: ElevatedButton.styleFrom(
                       backgroundColor: Color(0xffC0C0C0),
                       side: BorderSide.none,
                       shape: StadiumBorder()
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               Divider(),
               SizedBox(height: 10,),
               ProfileMenuWidget(title: 'Settings',icon: LineAwesomeIcons.cog,   onPress: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder:(context) => UpdateProfilePage()
                     )
                 );
               },),
               ProfileMenuWidget(title: 'History',icon: LineAwesomeIcons.history,onPress:() {
                          Navigator.push(context,
                         MaterialPageRoute(builder:(context) => HistoryPage()
                        )
                                    );
               },),
               ProfileMenuWidget(title: 'Track Order',icon: LineAwesomeIcons.location_arrow,onPress:() {      Navigator.push(context,
                   MaterialPageRoute(builder:(context) => TrackOrder()
                   )
               );},),
               ProfileMenuWidget(title: 'Contact Us',icon: LineAwesomeIcons.phone,onPress:() {Navigator.push(context,
                   MaterialPageRoute(builder:(context) => ContactUs()
                   )
               );},),
               Divider(color: Colors.grey,),
               SizedBox(height: 10,),
               ProfileMenuWidget(title: 'About',icon: LineAwesomeIcons.info_circle,onPress:() {},),
               ProfileMenuWidget(title: 'Rate Us',icon: LineAwesomeIcons.star,onPress:() {
                 showDialog(
                     context: context,
                     builder: (context)=>
                         AlertDialog(
                           title:Text('Rate us',style: TextStyle(color: Color(0xff060C0F) ,fontFamily:'Baskervville')),
                           content:  Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               Text('Please leave a star rating',style: TextStyle(color:Color(0xff060C0F),fontFamily:'Baskervville')),
                               SizedBox(height: 10,),
                               RatingBar.builder(
                                   minRating: 1,
                                   itemSize: 46,
                                   itemPadding: EdgeInsets.symmetric(horizontal: 2),
                                   itemBuilder: (context,_)=> Icon(LineAwesomeIcons.star_1,color: Colors.amber,size: 10,),
                                   onRatingUpdate: (rating){

                                   }
                               )

                             ],
                           ),
                            actions: [
                              TextButton(
                                  onPressed:() =>Navigator.pop(context),
                                  child: Text('OK',style: TextStyle(color: Color(0xff060C0F),fontFamily:'Baskervville')))
                            ],
                         )
                 );
               },endIcon: false,),
               ProfileMenuWidget(title: 'Log Out',icon: LineAwesomeIcons.alternate_sign_out,onPress:() {
                 showDialog(
                 context: context,
                 builder: (context) => AlertDialog(
                   actions: [
                     TextButton(onPressed: (){}, child: Text('Yes',style: TextStyle(color: Colors.red,fontFamily:'Baskervville'))),
                     TextButton(onPressed: (){Navigator.pop(context);}, child: Text('No',style: TextStyle(color: Color(0xff060C0F),fontFamily:'Baskervville')))
                   ],
                   title: Text('Are you sure you want to log out',style: TextStyle(color: Color(0xff060C0F),fontFamily:'Baskervville')),
                 ),
               );},textColor: Colors.red,endIcon: false,),
      
      
             ],
           ),
         )
       ],
          ),
        bottomNavigationBar: NavBar(idx: 3,),
        ),
    );
  }
}


