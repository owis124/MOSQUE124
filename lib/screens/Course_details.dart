import 'package:flutter/material.dart';
import 'package:karem2/widgets/buildContainer_Course.dart';
import 'package:karem2/widgets/show_dialog.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,

      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Mask group.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //const SizedBox(height: 5),
                    // Header Section
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back, size: 28),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Expanded(
                              child: Text(
                                "الطريق إلى التلاوة الصحيحة",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'ArabicFont',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                    // Main Image
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 154,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/Maskgroup1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        width: double.infinity, // يأخذ العرض الكامل المتاح
                        alignment:
                            Alignment.centerRight, // محاذاة المحتوى إلى اليمين
                        child: Text(
                          "الطريق إلى التلاوة الصحيحة",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'ArabicFont',
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _buildInfoItem(
                            "جامع أبو بكر الصديق",
                            "assets/images/7502326_location_map_pin_gps_mosque_icon 1.png",
                          ),
                          SizedBox(width: 10),
                          _buildInfoItem(
                            "أ.أحمد الأحمد",
                            "assets/1564534_customer_man_user_account_profile_icon 1.png",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    TabBar(
                      tabs: [
                        //          _buildTabItem("إنجازاتي", 2),
                        // _buildTabItem("السجل اليومي", 1),
                        // _buildTabItem("الوصف", 0),
                        Tab(child: _buildTabItem("الوصف",1)),
                        Tab(child: _buildTabItem("السجل اليومي", 0)),
                        Tab(child: _buildTabItem("إنجازاتي", 2)),
                      ],
                    ),
                    Container(
                      height: 500,
                      child: TabBarView(
                        children: [
                          ListView(
                            children: [
                              Column(
                                children: [
                                  const SizedBox(height: 15),
                                  // Course Title
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                    ),
                                    child: Text(
                                      "دورة عملية تهدف إلى تعليم أحكام التجويد الأساسية وتصحيح النطق ومخارج الحروف تهدف هذه الدورة التعليمية إلى تمكين المشاركين من تحسين قراءتهم للقرآن الكريم من خلال تعلم أحكام التجويد الأساسية وتطبيقها بشكل عملي.",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff797979),
                                        height: 1.5,
                                        fontFamily: 'ArabicFont',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                    ),
                                    child: Container(
                                      width:
                                          double
                                              .infinity, // يأخذ العرض الكامل المتاح
                                      alignment:
                                          Alignment
                                              .centerRight, // محاذاة المحتوى إلى اليمين
                                      child: Text(
                                        "محتوى الحلقات المسجدية",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontFamily: 'ArabicFont',
                                        ),
                                      ),
                                    ),
                                  ),

                                  // Content List
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                    ),
                                    child: Column(
                                      textDirection: TextDirection.rtl,
                                      mainAxisSize:
                                          MainAxisSize
                                              .min, // يقلل المساحة الإجمالية
                                      children: [
                                        _buildCompactLtrContainer(
                                          'أساسيات التجويد',
                                          'الدرس الأول',
                                        ),
                                        _buildCompactLtrContainer(
                                          'مخارج الحروف وصفاتها',
                                          'الدرس الثاني',
                                        ),
                                        _buildCompactLtrContainer(
                                          'المدود وأنواعها',
                                          'الدرس الثالث',
                                        ),
                                        _buildCompactLtrContainer(
                                          'أحكام النون الساكنة والتنوين',
                                          'الدرس الرابع',
                                        ),
                                        _buildCompactLtrContainer(
                                          'الاختبار النهائي',
                                          'الاختبار',
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 15),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: ListView(
                                    children: [
                                      CustomDialogWidget(
                                        date: "8/12/2024",
                                        messageDialog:
                                            "تأكد من قراءة الآيات ببطء وبتأنٍ لتجنب الأخطاء في النطق.",
                                      ),
                                      const SizedBox(height: 10),
                                      CustomDialogWidget(
                                        date: "7/12/2024",
                                        messageDialog:
                                            "الممارسة المستمرة مهمة جداً، حاول قراءة الآيات بشكل يومي لتحسين مهاراتك",
                                      ),
                                      const SizedBox(height: 10),
                                      CustomDialogWidget(
                                        date: "5/12/2024",
                                        messageDialog:
                                            "لا تتردد في القراءة أمام الآخرين، فالثقة بالنفس تساعدك على التحسن  عرض المزيد",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                const SizedBox(height: 8),
                                Container(
                                  width: double.infinity,
                                  height: 82,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffd3d2d2), // لون الإطار
                                      width: 0.5, // سماكة الإطار
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ), // زوايا دائرية إن أردت
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                      8.0,
                                    ), // مسافة داخلية بين النص والإطار
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .end, // محاذاة أفقية إلى اليمين
                                      mainAxisAlignment:
                                          MainAxisAlignment
                                              .start, // محاذاة رأسية إلى الأعلى
                                      children: [
                                        Text(
                                          ":الدروس التي تم إكمالها ",
                                          style: TextStyle(fontSize: 15),
                                          textAlign:
                                              TextAlign
                                                  .right, // تأكيد محاذاة النص لليمين
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "تم حضور 60% من جلسات الحلقة",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff8a8a8a),
                                          ),
                                          textAlign:
                                              TextAlign
                                                  .right, // تأكيد محاذاة النص لليمين
                                        ),
                                        const SizedBox(height: 8),
                                        LinearPercentIndicator(
                                          animation: true,
                                          animationDuration: 1500,
                                          lineHeight: 10,
                                          percent: 0.75,
                                          progressColor: Color(0xff18392b),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                Text(
                                  ":الدروس التي تم إكمالها ",
                                  style: TextStyle(fontSize: 15),
                                ),
                                _buildCompactLtrContainer1(
                                   "أساسيات التجويد",
                                  "الدرس الأول",
                                  "منذ 3 أيام",
                                ),
                                 _buildCompactLtrContainer1(
                                   "مخارج الحروف وصفاتها",
                                  "الدرس الثاني",
                                  "قيد الدراسة",
                                ),
                                 _buildCompactLtrContainer1(
                                   "المدود و أنواعها",
                                  "الدرس الثالث",
                                  "تم الاجتياز",
                                ),
                                _buildCompactLtrContainer1(
                                   "أحكام النون الساكنة والتنوين",
                                  "الدرس الرابع",
                                  "تم الاجتياز",
                                ),
                               
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Tabs Section
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 25),
                    //   child: Row(
                    //     textDirection: TextDirection.rtl,
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     children: [
                    //       _buildTabItem("إنجازاتي", 2),
                    //       _buildTabItem("السجل اليومي", 1),
                    //       _buildTabItem("الوصف", 0),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper Widgets
  Widget _buildTabItem(String title, int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        // borderRadius: BorderRadius.circular(8),
        // border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
          fontFamily: 'ArabicFont',
        ),
      ),
    );
  }
  Widget _buildInfoItem(String text, String iconPath) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Image.asset(iconPath, width: 20, height: 20),

        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontFamily: 'ArabicFont',
          ),
        ),
      ],
    );
  }
}

// دالة مساعدة لإنشاء العناصر مع إعدادات مدمجة
Widget _buildCompactLtrContainer(String title, String lesson) {
  return Container(
    margin: EdgeInsets.only(bottom: 2), // ← المسافة بين العناصر
    child: BuildcontainerCourse(
      children: [
        Text(title, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
        Expanded(child: Container(width: 30)),
        Text(lesson, style: TextStyle(fontSize: 10, color: Color(0xff7a7a7a))),
      ],
    ),
  );
}

Widget _buildCompactLtrContainer1(String title, String lesson, String Date,) {
  return Container(
    margin: EdgeInsets.only(bottom: 2), // ← المسافة بين العناصر
    child: BuildcontainerCourse(
      children: [
        Row(
          children: [
           Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage("assets/1891021_approved_check_checkbox_checkmark_confirm_icon 1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
            SizedBox(width: 10,),
            Text(title, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          ],
        ),
        Expanded(child: Container(width: 30)),
        Column(
          children: [
            Text(lesson, style: TextStyle(fontSize: 10, color: Color(0xff7a7a7a))),
            Text(Date, style: TextStyle(fontSize: 7, color: Color(0xff7a7a7a))),
          ],
        ),
      ],
    ),
  );
}
