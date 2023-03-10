import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:crdb_simbanking/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/pages/overview.dart';
import 'package:flutter/cupertino.dart';

class TumaPesaScreen extends StatefulWidget {
  const TumaPesaScreen({super.key});

  @override
  State<TumaPesaScreen> createState() => _TumaPesaScreenState();
}

class _TumaPesaScreenState extends State<TumaPesaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8).r,
        child: Column(
          children: [
            SizedBox(height: 5.h),
             SearchBar(title: "Search beneficiary"),
            SizedBox(height: 18.h),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('TRANSFERS'),
                  SizedBox(height: 10.h),
                  ServiceCard(
                    itemslength: tumapesa.length,
                    itemslistIcon: tumapesa.map((e) => e['icon']).toList(),
                    itemslistName: tumapesa.map((e) => e['name']).toList(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.star,
                        size: 42.sp, color: Colors.deepOrange),
                    SizedBox(height: 10.h),
                    Text(
                      'No favorites',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          letterSpacing: 0.8,
                          color: Colors.deepOrange),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      'At the end of your transaction you can add the payee to favorites',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          letterSpacing: 0.5,
                          color: Colors.deepOrange),
                    ),
                  ],
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final String title;
  const SearchBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width*0.78,
            height: MediaQuery.of(context).size.width*0.16,
            child: Card(
              elevation: 4,
              color:Colors.grey[400],
              shadowColor: Colors.grey[500],
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20).r,),
              child: TextField(
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10,top:8,left: 15),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  hintText: title,
                ),
              ),
            ),
          ),
           // Spacer(flex: 1),
          Padding(
            padding:  EdgeInsets.only(right: 3.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.15,
              width: 53,
              child:Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 4,
      child: Icon(CupertinoIcons.search),
      )

            ),
          )
        ],
      ),
    );
  }
}
