import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoBox extends StatelessWidget {
  final String heading;
  final String imageUrl;
   var title;
  final String subtitle;
   PromoBox({
    Key? key,
    required this.heading,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          heading,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
        ),
        SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0).r,
          child: NeumorphicWidget(
            radius: 14,
            content: Container(
              height: 90,
              width: MediaQuery.of(context).size.width - 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          imageUrl,
                          width: 30,
                          height: 90,
                          // fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             title==null?SizedBox(height: 0,): Text(
                                title,
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 3.h),
                              Text(subtitle)
                            ]),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class LoanBox extends StatelessWidget {
  final String heading;
  Widget? icon;
  var title;
  var interest;
  var paymentMode;
  final String subtitle;
  LoanBox({
    Key? key,
    required this.heading,
    required this.icon,
    required this.title,
    required this.paymentMode,
    required this.interest,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Text(
        //   heading,
        //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
        // ),
        SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0).r,
          child: NeumorphicWidget(
            radius: 14,
            content: Container(
              height: 90,
              width: MediaQuery.of(context).size.width - 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      icon!,
                      SizedBox(width: 8),
                      Expanded(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              title==null?SizedBox(height: 0,): Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    title,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    interest,
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),

                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(subtitle,style: TextStyle(letterSpacing: -0.5),),
                                  Text(paymentMode,style: TextStyle(letterSpacing: -0.5),),
                                ],
                              )
                            ]),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
