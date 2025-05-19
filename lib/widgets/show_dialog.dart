import 'package:flutter/material.dart';

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({
    super.key,
    required this.messageDialog,
    required this.date, 
    //required this.title,
   // required this.message1,
  });
  //final String title;
  final String date;
  final String messageDialog;
 //final String message1;

  void _showCustomDialog(
  BuildContext context, {
  required String title,
  required String message,
}) {
  showDialog(
    context: context,
    builder: (context) => Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        content: SizedBox(
          width: 296,
          height: 220,
          child: Stack(
            children: [
              // عنوان في الزاوية اليمنى العليا
              Positioned(
                top: 16,
                right: 16,
                child: Text(
                  title, // استخدام البارامتر هنا
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // زر الخروج
              Positioned(
                top: 8,
                left: 8,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ),

              // النص
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: Text(
                  message, // استخدام البارامتر هنا
                  textAlign: TextAlign.right,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
  onPressed: () => _showCustomDialog(context , title: "ضرورة الالتزام بالموعد",message: " ضرورة الالتزام بالمواعيد أن أؤكد على أهمية الالتزام بالمواعيد في حضور الحلقات الدراسية. الالتزام بالوقت يعكس احترامك لنفسك وللآخرين، ويعزز من قدرتك على الاستفادة القصوى من الدروس. حينما تصل في الوقت المحدد، يمكنك الاستماع إلى المقدمة"),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    minimumSize: const Size(double.infinity, 70),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide( // إضافة إطار رمادي
        color: Colors.grey[300]!,
        width: 1.0,
      ),
    ),
    padding: const EdgeInsets.all(12),
    alignment: Alignment.centerRight,
  ),
  child: SizedBox(
    width: double.infinity,
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ضرورة الالتزام بالمواعيد",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            messageDialog,
            style: const TextStyle(fontSize: 14),
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    ),
  ),
);
  }
}