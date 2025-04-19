import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key, this.hintText, this.onChanged, this.obscureText = false});
  Function(String)? onChanged;
  String? hintText;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 326, // تحديد العرض
      height: 52, // تحديد الارتفاع
      child: TextFormField(
        obscureText: obscureText!, // إخفاء النص إذا كان true
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0xff595959),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), // زوايا مدورة بمقدار 20
            borderSide: BorderSide(
              color: Color(0xff595959),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), // زوايا مدورة بمقدار 20
            borderSide: BorderSide(
              color: Color(0xff595959),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
              horizontal: 16, vertical: 14), // تعديل padding للنص داخل الحقل
        ),
      ),
    );
  }
}
