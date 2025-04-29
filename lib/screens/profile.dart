import 'package:flutter/material.dart';
import 'package:karem2/localization/MyLocalization.dart';
import 'package:karem2/screens/new_password.dart';
import 'package:karem2/screens/register_page.dart';
import 'package:karem2/widgets/build_Ltr_Container.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Mask group.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: kToolbarHeight + MediaQuery.of(context).padding.top,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 16,
                right: 16,
              ),
              color: Colors.transparent,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    right: 0,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_sharp),

                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                   Center(
                    child: Text(
                      getTranslated(context, "profile"),
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.person,
                            size: 100,
                            color: Color(0xff595959),
                          ),
                        ),
                      ),
                      LtrContainer(
                        children: [
                          const Text('الرقم التعريفي : '),
                          const SizedBox(width: 15),
                          const Text('ID 123456789'),
                          const SizedBox(width: 10),
                        ],
                      ),
                      LtrContainer(
                        children: [
                          const Icon(Icons.mosque),
                          const SizedBox(width: 10),
                          const Text('جامع أبو بكر الصديق'),
                        ],
                      ),

                      LtrContainer(
                        children: [
                          const Icon(Icons.book),
                          const SizedBox(width: 10),
                          const Text('أحاديث نبوية شريفة'),
                        ],
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "الإعدادات",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      LtrContainer(
                        children: [
                          const Icon(Icons.lock),
                          const SizedBox(width: 10),
                          const Text('تغيير كلمة المرور'),
                          const SizedBox(width: 165),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewPassword(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      LtrContainer(
                        children: [
                          const Icon(Icons.logout, color: Colors.red),
                          const SizedBox(
                            width: 10,
                          ), // المسافة بين أيقونة الخروج والنص
                          const Text(
                            'تسجيل الخروج',
                            style: TextStyle(color: Colors.red),
                          ),
                          const SizedBox(width: 170),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward_ios),
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterPage(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
