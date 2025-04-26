import 'package:flutter/material.dart';
import 'package:karem2/screens/end_screen.dart';
import 'package:karem2/widgets/costum_text_field.dart';
import 'package:karem2/widgets/custom_button.dart';

 

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
                    'assets/images/logo1.png', // شعار التطبيق
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'أدخل كلمة المرور الجديدة',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff18392b),
                          fontFamily: 'pacifico',
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'قم بإدخال كلمة المرور الجديدة ويجب أن',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff8789a3),
                          fontFamily: 'pacifico',
                        ),
                      ),
                      Text(
                        'تكون قوية ',
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
                        'كلمة المرور الجديدة: ',
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
                        'تأكيد كلمة المرور الجديدة:',
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
                  CustomButon(
                     onTap: () {
                               Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EndScreen()),
                        );
                            },
                    text: 'تغيير كلمة المرور',
                    
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