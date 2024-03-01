import 'dart:io';
import 'package:WatchHub/components/inputField.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
  @override
  Widget build(BuildContext context) {
    File ? selectedImage;
    Future _pickImageFromGallery() async{
      final returnedImage =await ImagePicker().pickImage(source: ImageSource.gallery);
      if(returnedImage == null) return;
      setState(() {
        selectedImage = File(returnedImage.path);
      });
    }
    Future _pickImageFromCamera() async{
      final returnedImage =await ImagePicker().pickImage(source: ImageSource.camera);
      if(returnedImage == null) return;
      setState(() {
        selectedImage = File(returnedImage.path);
      });
    }
    var IsDark = MediaQuery.of(context).platformBrightness == Brightness.light;
    var iconColor = IsDark ? Colors.white : Colors.black;
    var Color = IsDark ? Colors.black: Colors.white;
    return SafeArea(
      child: Scaffold(
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
        body: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                            width:120,
                            height: 120,
                            // selectedImage != null ? Image.file(selectedImage!).image : AlertDialog(
                            //                                                     actions: [
                            //                                                       TextButton(onPressed: (){Navigator.pop(context);}, child: Text('ok',style: TextStyle(color: Colors.black,fontFamily:'Baskervville')))
                            //                                                     ],
                            //                                                     title: Text('No Image Selected',style: TextStyle(color: Colors.black,fontFamily:'Baskervville')),
                            //                                                   );
                            child: selectedImage != null ?  Image(image:  Image.file(selectedImage!).image):CircleAvatar(maxRadius:100,backgroundImage: AssetImage('assets/images/logo.jpg'))
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: IsDark ? Color :  iconColor
                            ),
                            child: IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => SimpleDialog(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 15.0),
                                          child:Column(
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                  child:  TextButton(onPressed: () { _pickImageFromGallery(); },
                                                  child: Text('Choose photo',style: TextStyle(color: Color,fontFamily:'Baskervville'),),)
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child :TextButton( onPressed: () {  _pickImageFromCamera();},
                                                  child:Text('Take photo',style: TextStyle(color: Color,fontFamily:'Baskervville'),),),
                                              ),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                child:    TextButton(onPressed: () {  },
                                                  child: Text('Remove current photo',style: TextStyle(color: Color,fontFamily:'Baskervville'),),
                                              )),
                                            ],
                                          )

                                        ),

                                ],
                                      title: Text('Change Profile Picture',style: TextStyle(color: Color,fontFamily:'Baskervville')),
      

                                    ),
                            );
                                },
                              icon: Icon(LineAwesomeIcons.alternate_pencil,size: 20.0,color: IsDark ? iconColor :  Color),),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Form(
                        child: Column(
                          children: [
                            InputField(placeholder: 'Enter Full Name',hintText: 'John Doe',icon: LineAwesomeIcons.user,type: TextInputType.name,color: IsDark ? Color :  iconColor,),
                            SizedBox(height: 15,),
                            InputField(placeholder: 'Enter Email Address',hintText: 'JohnDoe@gmail.com',icon: LineAwesomeIcons.mail_bulk,type: TextInputType.emailAddress,color: IsDark ? Color :  iconColor,),
                            SizedBox(height: 15,),
                            InputField(placeholder: 'Enter Phone Number',hintText: '+234 81487711',icon: LineAwesomeIcons.phone,type: TextInputType.phone,color: IsDark ? Color :  iconColor,),
                            SizedBox(height: 15,),
                            InputField(placeholder: 'Enter Shipping Address',hintText: '123 john street',icon: LineAwesomeIcons.home,type: TextInputType.streetAddress,color: IsDark ? Color :  iconColor,),
                            SizedBox(height: 20,),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {

                                },
                                child: Text('Edit Profile',style: TextStyle(color: !IsDark ? Color : iconColor,fontFamily:'Baskervville'),),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:  IsDark ? Color :  iconColor,
                                    side: BorderSide.none,
                                    shape: StadiumBorder()
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {     showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    actions: [
                                      TextButton(onPressed: (){}, child: Text('Yes',style: TextStyle(color: Colors.red,fontFamily:'Baskervville'))),
                                      TextButton(onPressed: (){Navigator.pop(context);}, child: Text('No',style: TextStyle(color: Colors.black,fontFamily:'Baskervville')))
                                    ],
                                    title: Text('Are you sure you want to delete your profile',style: TextStyle(color: Colors.black,fontFamily:'Baskervville')),
                                  ),
                                );},
                                child: Text('Delete Profile',style: TextStyle(color: Color,fontFamily:'Baskervville')),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.redAccent.withOpacity(0.1),
                                    elevation: 0,
                                    foregroundColor: Colors.red,
                                    side: BorderSide.none,
                                    shape: StadiumBorder()
                                ),
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),

            ]
           ),
      ),
    );
  }
}
