import 'package:flutter/material.dart';
import 'package:karem2/screens/HomeScreen.dart';
import 'package:karem2/widgets/costum_text_field.dart';
import 'package:karem2/widgets/custom_button.dart';

// تأكد من أن المسار صحيح

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        // تطبيق LTR على الصفحة
        textDirection:
            TextDirection.rtl, // تعيين اتجاه النص من اليسار إلى اليمين
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/Mask group.png',
              ), // استخدام صورة للخلفية
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
                    'assets/logo1.png', // شعار التطبيق
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'أهلاً بعودتك ',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff18392b),
                          fontFamily: 'pacifico',
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'ادخل البيانات التالية لتتمكن من ',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff8789a3),
                          fontFamily: 'pacifico',
                        ),
                      ),
                      Text(
                        'الوصول الى حسابك  ',
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
                        'الرقم التعريفي',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff595959),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  CustomFormTextField(hintText: 'ID 1122335211'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'كلمة المرور:',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff595959),
                        ),
                      ),
                    ],
                  ),
                  CustomFormTextField(hintText: '***********************'),
                  SizedBox(height: 20),
                  CustomButon(
                    text: 'تسجيل دخول',
                    onTap: () {
                      // الانتقال إلى Homescreen عند النقر
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    },
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
