import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    String path='assets/images/icons8-delivery.gif';
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(LineAwesomeIcons.angle_left,)),
            centerTitle: true,
            title: Text('Track Order',    style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily:'Baskervville-Italic'
            ),),
          ),
        body: Center(
          child: Column(
            children: [
            SizedBox(
            height:100,
            ),
              SizedBox(
                child:Image(image:AssetImage(path),height: 200,width: 300,)
              ),
              Text('Your order is on route',style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily:'Baskervville'
              ),)
            ],
          ),
        )
      ),
    );
  }
}
