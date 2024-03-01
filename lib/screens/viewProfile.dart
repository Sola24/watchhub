import 'package:WatchHub/screens/updateProfilescreen.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(LineAwesomeIcons.angle_left,)),
            centerTitle: true,
            title: Text('My Profile',    style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily:'Baskervville'
            ),),
          ),
          body: Container(
            height: 600,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.white,
                border: Border.all(color:Colors.black)
            ),
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: CircleAvatar(maxRadius:50,backgroundImage: AssetImage('assets/images/logo.jpg'))),
                ListTile(
                  title: Text('Full Name',    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
              ),),
                  trailing:  Text('FIKSOLAMI MUHYMEEN TIJANI',    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,)),
                ),
                ListTile(
                  title: Text('Mobile Number',    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,)),
                  trailing:  Text('08104837711',    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,)),
                ),
                ListTile(
                  title: Text('Nick Name',    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                  ),),
                  trailing:  Text('TIJANI',    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                  ),),
                ),
                ListTile(
                  title: Text('Gender',    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                  ),),
                  trailing:  Text('Male',    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                  ),),
                ),
                ListTile(
                  title: Text('Email',    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                  ),),
                  trailing:  Text('solatijani8@gmail.com',    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                  ),),
                ),
                ListTile(
                  title: Text('Shipping Address',    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                  ),),
                  trailing:  Text('123 James Str agagag',    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) => UpdateProfilePage()
                          )
                      );
                    },
                    child: Text('Edit Profile',style: TextStyle(color: Colors.white,fontFamily:'Baskervville'),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffC0C0C0),
                        side: BorderSide.none,
                        shape: StadiumBorder()
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
