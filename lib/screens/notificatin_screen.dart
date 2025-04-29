import 'package:flutter/material.dart';
import 'package:karem2/localization/MyLocalization.dart';
import 'package:karem2/screens/register_page.dart';
import 'package:karem2/widgets/notification_container.dart';

class NotificatinScreen extends StatelessWidget {
  const NotificatinScreen({super.key});

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
                  // زر الرجوع
                  Positioned(
                    right: 0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child:  Icon(Icons.arrow_back),
                      style: ElevatedButton.styleFrom(
                        elevation: 0, // إزالة الظل
                        backgroundColor:
                            Colors.transparent, // جعل الخلفية شفافة (اختياري)
                        foregroundColor: Colors.black, // لون الأيقونة
                        padding: EdgeInsets.zero, // إزالة الحشو الداخلي
                        shape: const CircleBorder(), // شكل دائري للأيقونة
                        // splashFactory:
                        //     NoSplash.splashFactory, // إزالة تأثير الضغط
                      ),
                    ),
                  ),
                  // العنوان
                  Center(
                    child: Text(
                      getTranslated(context, "notification"),
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            NotificationContainer(
              Time: "منذ 3 دقائق",
              message:
                  "تم إضافة ملاحظة لك في دورة تلعم التجويد الصحيح من قبل المعلم",
            ),
            NotificationContainer(
              Time: "منذ 3 دقائق",
              message:
                  "تم إضافة ملاحظة لك في دورة تلعم التجويد الصحيح من قبل المعلم",
            ),
            NotificationContainer(
              Time: "منذ 3 دقائق",
              message: "تم اجتياز الاختبار بنجاح",
            ),
          ],
        ),
      ),
    );
  }
}
