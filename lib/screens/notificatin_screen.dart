import 'package:flutter/material.dart';
import 'package:karem2/widgets/notification_container.dart';

class NotificatinScreen extends StatelessWidget {
  const NotificatinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Mask group.png"),
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
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  // العنوان
                  const Center(
                    child: Text(
                      'التنبيهات',
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
              message:
                  "تم اجتياز الاختبار بنجاح",
            ),
          ],
        ),
      ),
    );
  }
}
