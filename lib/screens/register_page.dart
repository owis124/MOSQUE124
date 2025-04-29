import 'package:flutter/material.dart';
import 'package:karem2/localization/MyLocalization.dart';
import 'package:karem2/screens/HomeScreen.dart';
import 'package:karem2/widgets/costum_text_field.dart';

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Mask group.png'),
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
                Image.asset('assets/images/logo-base.png', height: 100),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      getTranslated(context, "welcome"),
                      style: TextStyle(
                        fontSize: 35,
                        color: Color(0xff18392b),
                        fontFamily: 'pacifico',
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      getTranslated(context, "enterData"),
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff8789a3),
                        fontFamily: 'pacifico',
                      ),
                    ),
                    Text(
                      getTranslated(context, "AccessYourAccount"),
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
                      getTranslated(context, "IdentificationNumber"),
                      style: TextStyle(fontSize: 15, color: Color(0xff595959)),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                CustomFormTextField(hintText: 'ID 1122335211'),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      getTranslated(context, "passWord"),
                      style: TextStyle(fontSize: 15, color: Color(0xff595959)),
                    ),
                  ],
                ),
                CustomFormTextField(hintText: '***********************'),
                SizedBox(height: 20),
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
    );
  }
}
