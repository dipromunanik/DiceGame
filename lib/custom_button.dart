import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 final Widget child;
 final VoidCallback onPressed;

 CustomButton({this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPressed,

      child: Container(
        height: 74,
        width: 74,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(19),
          boxShadow: [
            BoxShadow(
                blurRadius: 9,
                color: Colors.grey,
                spreadRadius: 1
            ),
          ],
          gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
        ),
        child:child,
      ),
    );
  }
}
