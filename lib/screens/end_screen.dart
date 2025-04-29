import 'package:flutter/material.dart';
import 'package:karem2/screens/HomeScreen.dart';





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
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homescreen(),
                      ),
                    );
                  },
                  child: Text(
                    'تسجيل دخول',
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
      ),
    );
  }
}