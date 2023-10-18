import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentionsScreen extends StatelessWidget {
  MentionsScreen({Key? key}) : super(key: key);
  final List<String> mentionsList = [
    'الله أكبر',
    'سبحان الله',
    'لا اله الا الله',
    'أستغفر الله',
    'لا حول ولا قوة الا بالله',
    'سبحان الله وبحمده',
    'سبحان الله العظيم',
    'اللهم صل على محمد وال محمد',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade700,
        title: const Text('الاذكار', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(
                mentionsList.length,
                (index) => Padding(
                  padding:  EdgeInsets.symmetric(
                    vertical: 5.h,horizontal: 10.w
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context,mentionsList[index]);
                    },
                    child: Card(
                          child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 120.h,
                              child: Text(mentionsList[index],style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.bold),)),
                        ),
                  ),
                ))),
      ),
    );
  }
}
