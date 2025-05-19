import 'package:flutter/material.dart';
import 'package:karem2/widgets/buildContainer_Course.dart';
import 'package:karem2/widgets/show_dialog.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                        width: double.infinity,
                        alignment: Alignment.centerRight,
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
                        children: [
                          _buildInfoItem(
                            "جامع أبو بكر الصديق",
                            "assets/images/7502326_location_map_pin_gps_mosque_icon 1.png",
                          ),
                          SizedBox(width: 10),
                          _buildInfoItem(
                            "أ.أحمد الأحمد",
                            "assets/images/1564534_customer_man_user_account_profile_icon 1.png",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    TabBar(
                      tabs: [
                        Tab(child: _buildTabItem("إنجازاتي", 2)),
                        Tab(child: _buildTabItem("السجل اليومي", 0)),
                        Tab(child: _buildTabItem("الوصف", 1)),
                      ],
                    ),
                    Container(
                      height: 500,
                      child: TabBarView(
                        children: [
                          // Tab 1: Achievements
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: ListView(
                              children: [
                                const SizedBox(height: 8),
                                Container(
                                  width: double.infinity,
                                  height: 82,
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffd3d2d2),
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "الدروس التي تم إكمالها :",
                                          style: TextStyle(fontSize: 15),
                                          textAlign: TextAlign.right,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "تم حضور 60% من جلسات الحلقة",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff8a8a8a),
                                          ),
                                          textAlign: TextAlign.right,
                                        ),
                                        const SizedBox(height: 8),
                                        LinearPercentIndicator(
                                          animation: true,
                                          animationDuration: 1200,
                                          lineHeight: 10,
                                          percent: 0.75,
                                          progressColor: Color(0xff18392b),
                                        
                               
                                          isRTL:
                                              true, 
                                        ),
                                      ],
                                    ),
                                  ),
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

                          // Tab 2: Daily Log
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: ListView(
                              children: [
                                const SizedBox(height: 15),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Column(
                                    children: [
                                      CustomDialogWidget(
                                        //title:' ا.احمد الاحمد ',
                                        date: "8/12/2024",
                                        messageDialog:
                                            "تأكد من قراءة الآيات ببطء وبتأنٍ لتجنب الأخطاء في النطق.",
                                      ),
                                      const SizedBox(height: 10),
                                      CustomDialogWidget(
                                      //title:' ا.احمد الاحمد ',
                                        date: "7/12/2024",
                                        messageDialog:
                                            "الممارسة المستمرة مهمة جداً، حاول قراءة الآيات بشكل يومي لتحسين مهاراتك",
                                      ),
                                      const SizedBox(height: 10),
                                      CustomDialogWidget(
                                       // title:' ا.احمد الاحمد ',
                                        date: "5/12/2024",
                                        messageDialog:
                                            "لا تتردد في القراءة أمام الآخرين، فالثقة بالنفس تساعدك على التحسن",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Tab 3: Description
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: ListView(
                              children: [
                                const SizedBox(height: 15),
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
                                    width: double.infinity,
                                    alignment: Alignment.centerRight,
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
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Column(
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(String title, int index) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
        fontFamily: 'ArabicFont',
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

  Widget _buildCompactLtrContainer(String title, String lesson) {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      child: BuildcontainerCourse(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Expanded(child: Container(width: 30)),
          Text(
            lesson,
            style: TextStyle(fontSize: 10, color: Color(0xff7a7a7a)),
          ),
        ],
      ),
    );
  }

  Widget _buildCompactLtrContainer1(String title, String lesson, String Date) {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
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
                    image: AssetImage(
                      "assets/images/1891021_approved_check_checkbox_checkmark_confirm_icon 1.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(child: Container(width: 30)),
          Column(
            children: [
              Text(
                lesson,
                style: TextStyle(fontSize: 10, color: Color(0xff7a7a7a)),
              ),
              Text(
                Date,
                style: TextStyle(fontSize: 7, color: Color(0xff7a7a7a)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
