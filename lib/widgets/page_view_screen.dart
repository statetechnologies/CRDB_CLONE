import 'package:crdb_simbanking/data/data.dart';
import 'package:crdb_simbanking/widgets/circle_card.dart';
import 'package:crdb_simbanking/widgets/custom_divider.dart';
import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:crdb_simbanking/widgets/promo_box.dart';
import 'package:crdb_simbanking/widgets/service_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class AccountsTab extends StatelessWidget {
  String actual = '50000';
  String available = '49500';

  bool showAmount =false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState){
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            CircleCard(
              onTap: (){

                setState((){
                  showAmount=!showAmount;
                });
              },
              height: MediaQuery.of(context).size.height*0.28,
              childs: [
                 Text('0152292254901'),
                SizedBox(height: 5.h),
                 Text("Actual"),
                SizedBox(height: 5.h),
                Text(
                  showAmount==true?numberFormat(int.parse(actual)):actual.replaceRange(0, actual.length, '*********'),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 13.sp),
                ),
                Text("Available"),
                SizedBox(height: 5.h),
                Text(
                  showAmount==true? available:available.replaceRange(0, available.length, '*********'),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 13.sp),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.028),
            CustomCrdbDIvider(),
            // SizedBox(height: MediaQuery.of(context).size.height*0.02),
            ServiceCard(
              itemslength: AccountActions.length,
              itemslistIcon: AccountActions.map((e) => e['icon']).toList(),
              itemslistName: AccountActions.map((e) => e['name']).toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.137,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: AccountAds.length,
                  itemBuilder: (context, index) {
                    return PromoBox(
                      heading: AccountAds[index]['heading'],
                      imageUrl: AccountAds[index]['image'],
                      title: AccountAds[index]['title'],
                      subtitle: AccountAds[index]['subtitle'],
                    );
                  }),
            ),
          ],
        ),
      );
    });

  }

  numberFormat(number) {
    var f = NumberFormat("###,###", "en_US");
    var newNum = f.format(number);
    return newNum;
  }
}

class LoansTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          CircleCard(
            onTap: (){},
            height: MediaQuery.of(context).size.height*0.26,
            showOverlays: false,
            color: Colors.white,
            childs: [
              Text(
                "Get instant loan Advance",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text(
                "No Loans are available for you at the moment",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp),
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          CustomCrdbDIvider(),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          ServiceCard(
            itemslength: loanActions.length,
            itemslistIcon: loanActions.map((e) => e['icon']).toList(),
            itemslistName: loanActions.map((e) => e['name']).toList(),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("LOANS WE OFFER",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.12,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: loans.length,
                    itemBuilder: (context, index) {
                      return LoanBox(
                        heading: loans[index]['heading'],
                        icon: loans[index]['image'],
                        title: loans[index]['title'],
                        subtitle: loans[index]['subtitle'],
                        paymentMode: loans[index]['paymentMode'],
                        interest: loans[index]['interest'],

                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.259,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/platinum.png'))),
              ),
              Positioned(
                  bottom: -30,
                  right: 50,
                  child: SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: NeumorphicWidget(
                        color: Colors.grey.shade300,
                        content: Icon(Icons.visibility)),
                  )),
              Positioned(
                  bottom: -30,
                  right: 120,
                  child: SizedBox(
                    height: 40.h,
                    width: 40.w,
                    child: NeumorphicWidget(
                        color: Colors.grey.shade300,
                        content: Icon(Icons.settings_outlined)),
                  ))
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05),
          CustomCrdbDIvider(),
          ServiceCard(
            itemslength: cardActions.length,
            itemslistIcon: cardActions.map((e) => e['icon']).toList(),
            itemslistName: cardActions.map((e) => e['name']).toList(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.135,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return PromoBox(
                    heading: cards[index]['heading'],
                    imageUrl: cards[index]['image'],
                    title: null,
                    subtitle: cards[index]['subtitle'],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
