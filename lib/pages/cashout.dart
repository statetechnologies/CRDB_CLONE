import 'package:crdb_simbanking/pages/overview.dart';
import 'package:crdb_simbanking/widgets/call_center.dart';
import 'package:crdb_simbanking/widgets/custom_button.dart';
import 'package:crdb_simbanking/widgets/custom_divider.dart';
import 'package:crdb_simbanking/widgets/greetings.dart';
import 'package:crdb_simbanking/widgets/tabs_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class CashoutScreen extends StatefulWidget {
  const CashoutScreen({super.key});

  @override
  State<CashoutScreen> createState() => _CashoutScreenState();
}

class _CashoutScreenState extends State<CashoutScreen>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      if (_tabController.index != _pageController.page!.round()) {
        _pageController.animateToPage(_tabController.index,
            duration: const Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
  }


  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8).r,
        child: Column(
          children: [
            SizedBox(height: 5.h),
            TopGreetings(),
            SizedBox(height: 18.h),
            TabsSection(
              controller: _tabController,
              tabs: ['Wakala/Branch', 'ATM'],
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [WakalaView(), ATMView()],
              ),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}

class WakalaView extends StatelessWidget {


  bool showExtra = false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context,setState){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.info_outline, color: Colors.green, size: 24.sp),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Visit your nearest CRDB Wakala or Branch Teller to withdraw cash conveniently without an ATM card",
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Withdraw from",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(height: 4),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.centerLeft,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width,
                            height:70,
                            child: Card(
                              elevation: 4,
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 8.0),
                                    child: Text('0152292254901',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17,letterSpacing: 0.5),),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.arrow_drop_down,size:29),
                                  )
                                ],
                              ),
                            ),),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Enter Amount",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(height: 8.h),
                      SizedBox(
                        height: 65,
                        child: Card(
                          color: Colors.grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                          child: Padding(
                            padding:  EdgeInsets.only(top: 4.0),
                            child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 15,left: 15),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,) ),
                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                  fillColor: Colors.grey.withOpacity(0.8),
                                  filled: true,
                                  hintText: '',
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                CustomCrdbDIvider(height: 3, width: 100, radius: 8),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Transfer description (optional)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 3,),
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.9 ,
                      child: showExtra == false ? GestureDetector(
                        onTap: (){
                          setState((){
                            showExtra = true;
                          });

                        },
                        child:   Padding(
                          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.05),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.add,size: 18,),
                              Text("Add description",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ):GestureDetector(
                        onTap: (){
                          setState((){
                            showExtra = false;
                          });

                        },
                        child:   Padding(
                          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.minus,size: 18,),
                              Text("Remove description",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ),
                    ),
                   SizedBox(
                     child: showExtra == true ? Padding(
                       padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.03),
                       child: SizedBox(
                         width:MediaQuery.of(context).size.width*0.9 ,
                         height: 65,
                         child: Card(
                           color: Colors.grey,
                           elevation: 0,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                           child: Padding(
                             padding:  EdgeInsets.only(top: 4.0),
                             child: TextField(
                                 cursorColor: Colors.black,
                                 decoration: InputDecoration(
                                   contentPadding: EdgeInsets.only(bottom: 15,left: 15),
                                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,) ),
                                   focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                   fillColor: Colors.grey.withOpacity(0.8),
                                   filled: true,
                                   hintText: '',
                                 )),
                           ),
                         ),
                       ),
                     ):null,
                   )

                  ],
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width*0.9 ,
                  child: CustomButton(
                      tap: () {}, text: 'PROCEED ', textColor: Colors.white),
                ),
              ],
            ),
          ],
        ),
      );
    });

  }
}

class ATMView extends StatelessWidget {


  bool showExtra=false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context,setState){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.info_outline, color: Colors.green, size: 24.sp),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Withdraw cash at your nearest CRDB ATM without your TemboCard",
                        softWrap: true,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Withdraw from",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(height: 4),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.centerLeft,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width,
                            height:70,
                            child: Card(
                              elevation: 4,
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 8.0),
                                    child: Text('0152292254901',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17,letterSpacing: 0.5),),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.arrow_drop_down,size:29),
                                  )
                                ],
                              ),
                            ),),
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
                SizedBox(height: 10),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mobile number",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(height: 8),
                      SizedBox(
                        height: 65,
                        child: Card(
                          color: Colors.grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                          child: Padding(
                            padding:  EdgeInsets.only(top: 4.0),
                            child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 15,left: 15),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,) ),
                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                  fillColor: Colors.grey.withOpacity(0.8),
                                  filled: true,
                                  hintText: 'Required',
                                  suffixIcon: Icon(Icons.perm_contact_calendar_outlined,color:Colors.black.withOpacity(0.8) ,)
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Amount",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                      SizedBox(height: 8),
                      SizedBox(
                        height: 65,
                        child: Card(
                          color: Colors.grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                          child: Padding(
                            padding:  EdgeInsets.only(top: 4.0),
                            child: TextField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(bottom: 15,left: 15),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,) ),
                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                  fillColor: Colors.grey.withOpacity(0.8),
                                  filled: true,
                                  hintText: '',
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:18),
                CustomCrdbDIvider(height: 4.h, width: 80.w, radius: 4),
                SizedBox(height: 20.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Transfer description (optional)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    SizedBox(height: 3,),
                    SizedBox(
                      width:MediaQuery.of(context).size.width*0.9 ,
                      child: showExtra == false ? GestureDetector(
                        onTap: (){
                          setState((){
                            showExtra = true;
                          });

                        },
                        child:   Padding(
                          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.05),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.add,size: 18,),
                              Text("Add description",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ):GestureDetector(
                        onTap: (){
                          setState((){
                            showExtra = false;
                          });

                        },
                        child:   Padding(
                          padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.01),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.minus,size: 18,),
                              Text("Remove description",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: showExtra == true ? Padding(
                        padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.03),
                        child: SizedBox(
                          width:MediaQuery.of(context).size.width*0.9 ,
                          height: 65,
                          child: Card(
                            color: Colors.grey,
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                            child: Padding(
                              padding:  EdgeInsets.only(top: 4.0),
                              child: TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 15,left: 15),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,) ),
                                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: BorderSide(width: 1,color: Colors.grey,)),
                                    fillColor: Colors.grey.withOpacity(0.8),
                                    filled: true,
                                    hintText: '',
                                  )),
                            ),
                          ),
                        ),
                      ):null,
                    )

                  ],
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width*0.9 ,
                  child: CustomButton(
                      tap: () {}, text: 'PROCEED', textColor: Colors.white),
                ),
              ],
            ),
          ],
        ),
      );
    });

  }
}
