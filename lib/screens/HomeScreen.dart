import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karem2/screens/Home_conect.dart';
import 'package:karem2/screens/notice_screen.dart';
import 'package:karem2/screens/notificatin_screen.dart';
import 'package:karem2/screens/profile.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int myImdex = 0;
  final List<Widget> widgetlist = [
    // الصفحة الرئيسية الحالية
    Profile(),
    NoticeScreen(),
    NotificatinScreen(),
    HomeContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          widgetlist[myImdex], // هنا نضع محتوى الصفحة الحالية بناءً على المؤشر
      bottomNavigationBar: CupertinoTabBar(
        onTap: (index) {
          setState(() {
            myImdex = index;
          });
        },
        currentIndex: myImdex,
        activeColor: Color(0xff18392b),// لون الأيقونة النشطة (المحددة)
        inactiveColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ملفي"),
          
          BottomNavigationBarItem(icon: Icon(Icons.note), label: "الملاحظات"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "التنبيهات",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
        ],
      ),
    );
  }
}
