import 'package:flutter/material.dart';
class InputField extends StatefulWidget {
  const InputField({super.key, required this.placeholder, required this.icon, required this.type, required this.hintText,  required this.color,});
  final String placeholder;
  final IconData icon;
  final TextInputType type;
  final String hintText;
  final Color color;


  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: widget.color,
      keyboardType: widget.type,
      decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle:  TextStyle(color: widget.color,fontFamily:'Baskervville-Italic'),
          fillColor: widget.color,
          label: Text(widget.placeholder,style:  TextStyle(color: widget.color,fontFamily:'Baskervville-Italic')),
          prefixIcon:  Icon(widget.icon,color: widget.color,),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0,color: widget.color)
          ),
          labelStyle:  TextStyle(color: widget.color,fontFamily:'Baskervville-Italic')
      ),
      validator: (value){
        if(widget.placeholder == 'Full Name')
        {
          if (value!.isEmpty || !RegExp(r'^[A-za-z]+(?:\s[A-Za-z]+)+$').hasMatch(value)) {
            return "Invalid Name, Only Letters are allowed";
          }
          else {
            return null;
          }
        }
        if(widget.placeholder == 'Email Address')
        {
          if (value!.isEmpty || !RegExp(r'^\w+(\.-?\w+)*@\w+(\.-?\w+)*(\.\w{2,3})+$').hasMatch(value)) {
            return "Invalid Email Address";
          }
          else {
            return null;
          }
        }
        if(widget.placeholder == 'Phone Number')
        {
          if (value!.isEmpty || !RegExp(r'^(\+234|0)[789]\d{9}$').hasMatch(value)) {
            return "Enter correct phone number ";
          }
          else {
            return null;
          }
        }
        if(widget.placeholder == 'Username')
        {
          if (value!.isEmpty || !RegExp(r'^\+?[0-9]{1,3}[-\s]?\(?[0-9]{1,4}\)?[-\s]?[0-9]{1,4}[-\s]?[0-9]{1,9}$').hasMatch(value)) {
            return "Username can only contain letters,numbers and the length must be between 8 and 20 characters ";
          }
          else {
            return null;
          }
        }
        if(widget.placeholder == 'Shipping Address')
        {
          if (value!.isEmpty || !RegExp(r'^\+?[0-9]{1,3}[-\s]?\(?[0-9]{1,4}\)?[-\s]?[0-9]{1,4}[-\s]?[0-9]{1,9}$').hasMatch(value)) {
            return "Invalid Shipping Address";
          }
          else {
            return null;
          }
        }


        return null;

      },
    );

  }
}
