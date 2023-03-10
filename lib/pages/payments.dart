import 'package:crdb_simbanking/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/pages/overview.dart';
import 'package:crdb_simbanking/pages/transfers.dart';

class MalipoScreen extends StatefulWidget {
  const MalipoScreen({super.key});

  @override
  State<MalipoScreen> createState() => _MalipoScreenState();
}

class _MalipoScreenState extends State<MalipoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Column(
            children: [
               SearchBar(title: "Search for services"),
              DetailsRowPattern(
                  leftitle: "TOP CATEGORIES", rightitle: "SEE ALL"),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.55,
                child: ListView(
                  children: [
                    ServiceCard(
                      itemslength: payments.length,
                      itemslistIcon: payments.map((e) => e['icon']).toList(),
                      itemslistName: payments.map((e) => e['name']).toList(),
                    ),
                  ],
                ),
              ),
              DetailsRowPattern(leftitle: "FOR YOU", rightitle: "MORE"),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.centerLeft,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height*0.079,
                    child: Card(
                      elevation: 4,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 18.0),
                            child: Text('🖤    Favorites and Recent',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.arrow_right,size:29),
                          )
                        ],
                      ),
                    ),),
                  // TextField(
                  //   decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       focusedBorder: InputBorder.none,
                  //       enabledBorder: InputBorder.none,
                  //       fillColor: Colors.white,
                  //       filled: true,
                  //       labelText: '0000087878989',
                  //       suffixIcon: Icon(Icons.arrow_drop_down, size: 20.sp)),
                  // ),
                  Positioned(
                    left: 4,
                    child: SizedBox(
                        width: 4.w,
                        height: 40.h,
                        child:  ColoredBox(color: Colors.green)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsRowPattern extends StatelessWidget {
  final String leftitle;
  final String rightitle;
  const DetailsRowPattern({
    Key? key,
    required this.leftitle,
    required this.rightitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(leftitle),
        Row(
          children: [Text(rightitle), Icon(Icons.arrow_right)],
        )
      ]),
    );
  }
}
