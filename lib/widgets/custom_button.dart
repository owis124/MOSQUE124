import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
   CustomButon({super.key,  this.onTap ,required this.text}) ;
VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff18392b),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 326,
        height: 52,
        child: Center(
          child: Text(text,
            style: TextStyle(
              color: Colors.white, // جعل النص باللون الأبيض
              fontSize: 16, ),
        ),
      ),
      ),
    );
  }
}
