import 'package:flutter/material.dart';
import 'package:karem2/localization/MyLocalization.dart';
import 'package:karem2/screens/end_screen.dart';
import 'package:karem2/widgets/costum_text_field.dart';


 

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPassword();
}

class _NewPassword extends State<NewPassword> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality( // تطبيق LTR على الصفحة
        textDirection: TextDirection.rtl, // تعيين اتجاه النص من اليسار إلى اليمين
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Mask group.png'), // استخدام صورة للخلفية
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  SizedBox(height: 75),
                  Image.asset(
                    'assets/images/logo-base.png', // شعار التطبيق
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getTranslated(context, "enterPassword"),
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff18392b),
                          fontFamily: 'pacifico',
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        getTranslated(context, "enterNewPassWord"),
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff8789a3),
                          fontFamily: 'pacifico',
                        ),
                      ),
                      Text(
                        getTranslated(context, "Strong"),
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff8789a3),
                          fontFamily: 'pacifico',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 75),
                  Row(
                    children: [
                      Text(
                        getTranslated(context, "newPassWord"),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff595959),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomFormTextField(
                    hintText: '***********************',
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        getTranslated(context, "sureNewPassWord"),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff595959),
                        ),
                      ),
                    ],
                  ),
                  CustomFormTextField(
                    hintText: '***********************',
                  ),
                  SizedBox(height: 20),
                 ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EndScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'تغيير كلمة المرور',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Color(0xff18392b),
                    foregroundColor: Colors.white,
                  ),
                ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}