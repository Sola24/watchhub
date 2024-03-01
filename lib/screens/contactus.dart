import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});
  @override
  Widget build(BuildContext context) {
    var IsDark = MediaQuery.of(context).platformBrightness == Brightness.light;
    var forWhiteMode = IsDark ? Colors.white : Color(0xff060C0F);
    var forDarkMode = IsDark ? Color(0xff060C0F): Colors.white;
    return SafeArea(
          child:Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(LineAwesomeIcons.angle_left,)),
              centerTitle: true,
              title: Text('Edit Profile',    style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Baskervville'
              ),),
            ),
              body:Container(
                child: Column(
                  children: [
                    Card(
                      color:  forWhiteMode,
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            Icon(Icons.phone_outlined,color: forDarkMode),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Center(
                                child: Text('+2348104837711',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Baskervville',
                                  color: forDarkMode,
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: forWhiteMode,
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            Icon(Icons.email_outlined,color: forDarkMode),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Center(
                                child: Text('andriodx@gmail.com',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Baskervville',
                                  color: forDarkMode,
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color:  forWhiteMode,
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Row(
                          children: [
                            Icon(Icons.location_city_outlined,color: forDarkMode),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Center(
                                child: Text('123 James str Surulere Lagos',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Baskervville',
                                  color: forDarkMode,
                                ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () => MapsLauncher.launchCoordinates(
                            6.498847,3.359560, 'AndriodX HeadQuarters are here'),
                      child: Card(
                        color:  forWhiteMode,
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Row(
                            children: [
                              Icon(Icons.location_on,color: forDarkMode),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Center(
                                  child: Text('Open location in Google Maps',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily:'Baskervville',
                                    color: forDarkMode,
                                  ),),
                                ),
                              ),
                              Icon(LineAwesomeIcons.angle_right,color: forDarkMode),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )
    );
  }
}

