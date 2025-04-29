import 'package:flutter/material.dart';
import 'package:karem2/localization/MyLocalization.dart';
import 'package:karem2/screens/register_page.dart';
import 'package:karem2/widgets/show_dialog.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

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
            // شريط العنوان العلوي
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
                   Center(
                    child: Text(
                      getTranslated(context, "notices"),
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

            // المساحة الفاصلة
            const SizedBox(height: 0),

            // قائمة الملاحظات مع مسافات
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    CustomDialogWidget(
                      date: "8/12/2024",
                      messageDialog:
                          "أود أن أؤكد على أهمية الالتزام بالمواعيد في حضور الحلقات الدراسية.عرض المزيد",
                    ),
                    const SizedBox(height: 10),
                    CustomDialogWidget(
                      date: "7/12/2024",
                      messageDialog:
                          "يرجى الاطلاع على الجدول الجديد للحلقات الدراسية لشهر ديسمبر",
                    ),
                    const SizedBox(height: 10),
                    CustomDialogWidget(
                      date: "5/12/2024",
                      messageDialog:
                          "تذكير: الاختبار النهائي سيكون الأسبوع القادم",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
