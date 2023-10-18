import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mesbaha/mentions_screen.dart';
import 'package:mesbaha/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int numberPraise = 0;
  String mention = 'الله أكبر';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/image_sky.jpg',
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity),
          Container(
            color: Colors.black.withOpacity(.5),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: FittedBox(
                  child: Text(
                    mention,
                    style: TextStyle(
                        fontSize: 35.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              SizedBox(height: 10.w,),
              Text(
                numberPraise.toString(),
                style: TextStyle(
                    fontSize: 45.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 500.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonWidget(
                  text: 'تسبيح',
                  onTap: () {
                    setState(() {
                      numberPraise++;
                    });
                  },
                  icon: Icons.fingerprint,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonWidget(
                        text: 'تصفير',
                        onTap: () {
                          setState(() {
                            numberPraise = 0;
                          });
                        },
                        icon: Icons.replay_rounded,
                      ),
                      ButtonWidget(
                        text: 'ذكر',
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MentionsScreen(),
                                )).then(
                              (value) {
                                setState(() {
                                  if (value != mention) {
                                    mention = value;
                                    numberPraise = 0;
                                  }
                                });
                              },
                            ).onError((error, stackTrace) => null);
                          });
                        },
                        icon: Icons.book,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
