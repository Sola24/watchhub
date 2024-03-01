import 'package:flutter/material.dart';
class toggleIconButton extends StatefulWidget {
  const toggleIconButton({super.key, required this.onFalseSnackBarContent, required this.onFalseSnackBarLabel, required this.onTrueSnackBarContent, required this.onTrueSnackBarLabel, required this.onFalseIcon, required this.onTrueIcon, required this.onFalseColor, required this.onTrueColor, required this.iconSize});
  final String onFalseSnackBarContent;
 final String onFalseSnackBarLabel;
  final String onTrueSnackBarContent;
  final String onTrueSnackBarLabel;
  final IconData onFalseIcon;
  final IconData onTrueIcon;
  final Color onFalseColor;
  final Color onTrueColor;
  final double iconSize;
  @override
  State<toggleIconButton> createState() => _toggleIconButtonState();
}

class _toggleIconButtonState extends State<toggleIconButton> {
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          click = !click;
        });
        final snackbarAdd = SnackBar(
          content: Text(widget.onFalseSnackBarContent),
          duration: Duration(seconds: 4),
          action: SnackBarAction(
            label: widget.onFalseSnackBarLabel,
            onPressed: (){
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              setState(() {
                click = !click;
              });
            },
          ),
        );
        final snackbarRemove = SnackBar(
          content: Text(widget.onTrueSnackBarContent),
          duration: Duration(seconds: 4),
          action: SnackBarAction(
            label: widget.onTrueSnackBarLabel,
            onPressed: (){
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              setState(() {
                click = !click;
              });
            },
          ),
        );
        click == true ? ScaffoldMessenger.of(context).showSnackBar(snackbarAdd):ScaffoldMessenger.of(context).showSnackBar(snackbarRemove);
      },
      icon:  Icon(
        click == false ? widget.onFalseIcon  : widget.onTrueIcon,size: widget.iconSize,
        color: click == false ? widget.onFalseColor: widget.onTrueColor,
      ),
    );
  }
}
