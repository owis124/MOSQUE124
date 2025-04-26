import 'package:flutter/material.dart';
import 'package:karem2/screens/HomeScreen.dart';
import 'package:karem2/widgets/custom_button.dart';




class EndScreen extends StatefulWidget {
  const EndScreen({super.key});

  @override
  State<EndScreen> createState() => _EndScreen();
}

class _EndScreen extends State<EndScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality( // تطبيق LTR على الصفحة
        textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Mask group.png'), // Use a PNG or JPEG for the background
            fit: BoxFit.cover,
          ),
        ),
        child: Center( // Center the entire content
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Form(
              key: formKey,
              child: ListView(
                shrinkWrap: true, // To make the ListView take only the space it needs
                children: [
                  Image.asset(
                    'assets/images/Vector.png', // SVG logo or icon
                    height: 100,
                  ),
                  SizedBox(height: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Center the column content vertically
                    children: [
                      Text(
                        'تهانينا!',
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff1b132a),
                          fontFamily: 'pacifico',
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'لقد تم تغيير كلمة مرور حسابك بنجاح، يمكنك الآن العودة',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff7a7a7a),
                          fontFamily: 'pacifico',
                        ),
                      ),
                      Text(
                        'وتسجيل الدخول من جديد!',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff7a7a7a),
                          fontFamily: 'pacifico',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  CustomButon(
                    text: ('تسجيل دخول '),
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
      ),
    );
  }
}