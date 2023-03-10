import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Map> AccountActions = [
  {
    "name": "Statement",
    "icon": Icon(
      Icons.article_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Government",
    "icon": Icon(
      Icons.dataset_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Airtime",
    "icon": Icon(
      Icons.today_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "LUKU",
    "icon": Icon(
      Icons.lightbulb_outline,
      size: 32.sp,
    )
  }
];

List<Map> tumapesa = [
  {
    "name": "CRDB account",
    "icon": Icon(
      Icons.arrow_forward,
      size: 32.sp,
    )
  },
  {
    "name": "Other banks",
    "icon": Icon(
      Icons.account_balance_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Mobile networks",
    "icon": Icon(
      Icons.today_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Cardless",
    "icon": Icon(
      Icons.lightbulb_outline,
      size: 32.sp,
    )
  }
];

List<Map> cardActions = [
  {
    "name": "Freeze card",
    "icon": Icon(
      Icons.lock_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Request card",
    "icon": Icon(
      Icons.web_asset_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Cards application status",
    "icon": Icon(
      Icons.credit_card_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Manage online purchases",
    "icon": Icon(
      Icons.shopping_cart_outlined,
      size: 32.sp,
    )
  }
];
List<Map> loanActions = [
  {
    "name": "Top up",
    "icon": Icon(
      Icons.clean_hands_rounded,
      size: 32.sp,
    )
  },
  {
    "name": "Repay",
    "icon": Icon(
      CupertinoIcons.arrow_up_right_square_fill,
      size: 32.sp,
    )
  },
  {
    "name": "History",
    "icon": Icon(
      Icons.history,
      size: 32.sp,
    )
  },
  {
    "name": "Terms & conditions",
    "icon": Icon(
      Icons.article_outlined,
      size: 32.sp,
    )
  }
];

List<Map> mikopo = [
  {
    "name": "Omba",
    "icon": Icon(
      Icons.volunteer_activism_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Lipa",
    "icon": Icon(
      Icons.web_asset_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Historia",
    "icon": Icon(
      Icons.volunteer_activism_outlined,
      size: 32.sp,
    )
  },
  {
    "name": "Vigezo",
    "icon": Icon(
      Icons.library_books_outlined,
      size: 32.sp,
    )
  }
];

List<Map> payments = [
  {
    "name": "LUKU",
    "icon": Icon(
      Icons.lightbulb_outline,
      size: 30.sp,
    )
  },
  {
    "name": "Airtime and bundles",
    "icon": Icon(
      Icons.today_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "TV",
    "icon": Icon(
      Icons.live_tv_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "Government",
    "icon": Icon(
      Icons.dataset_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "Education",
    "icon": Icon(
      Icons.local_library_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "Airline",
    "icon": Icon(
      Icons.flight,
      size: 30.sp,
    )
  },
  {
    "name": "Water bills",
    "icon": Icon(
      Icons.water_drop_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "QR payments",
    "icon": Icon(
      CupertinoIcons.qrcode_viewfinder,
      size: 30.sp,
    )
  },
  {
    "name": "Insurance",
    "icon": Icon(
      Icons.account_circle_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "Hospitals",
    "icon": Icon(
      Icons.apartment_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "Stock & rates",
    "icon": Icon(
      Icons.trending_up_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "Tickets",
    "icon": Icon(
      CupertinoIcons.tickets_fill,
      size: 30.sp,
    )
  },
  {
    "name": "Investment",
    "icon": Icon(
      Icons.stacked_line_chart,
      size: 30.sp,
    )
  },
  {
    "name": "Gaming",
    "icon": Icon(
      Icons.sports_esports_outlined,
      size: 30.sp,
    )
  },
  {
    "name": "More payments",
    "icon": Icon(
      Icons.more_horiz_outlined,
      size: 30.sp,
    )
  },
];

List<Map> AccountAds = [
  {
    "heading": "MERCHANT PAYMENTS",
    "title": "LIPA HAPA",
    "subtitle": "Pay direct to merchants quickly",
    "image": "assets/images/crdb.png"
  },
  {
    "heading": "SHAREHOLDERS REGISTRATION",
    "title": "Register now",
    "subtitle": "Register for the upcoming AGM meeting",
    "image": "assets/images/crdb.png"
  },
];
List<Map> cards = [
  {
    "heading": "NOTIFICATIONS",
    "title": " ",
    "subtitle": "Enjoy seamless transactions without charges when paying with TemboCard",
    "image": "assets/images/crdb.png"
  },
];
List loans = [
  {
    "heading": "LOANS WE OFFER",
    "title": "Salary advance",
    "subtitle": "get up to 1 million",
    "interest": "5% interest",
    "paymentMode": "pay in 30 days",
    "image": Icon(Icons.person_outline,color: CupertinoColors.systemGreen,size: 34,)
  },
  {
    "heading": "LOANS WE OFFER",
    "title": "Boom advance",
    "subtitle": "get up to TZS 120,000",
    "interest": "no interest",
    "paymentMode": "repay on boom day",
    "image":  Icon(Icons.menu_book_sharp,color: CupertinoColors.systemGreen,size: 34,)
  },
  {
    "heading": "LOANS WE OFFER",
    "title": "Pension advance",
    "subtitle": "get up to 1 million",
    "interest": "3% interest",
    "paymentMode": "repay on boom day",
    "image":  Icon(Icons.elderly_outlined,color: CupertinoColors.systemGreen,size: 34,)
  },
  {
    "heading": "LOANS WE OFFER",
    "title": "Fahari Float",
    "subtitle": "get up to 5 million",
    "interest": "no interest",
    "paymentMode": "pay in 30 days",
    "image":  Icon(Icons.payments_outlined,color: CupertinoColors.systemGreen,size: 34,)
  },
  {
    "heading": "LOANS WE OFFER",
    "title": "Personal loan",
    "subtitle": "get up to 100 million",
    "interest": "16% interest",
    "paymentMode": "pay in 7 years",
    "image":  Icon(Icons.clean_hands_outlined,color: CupertinoColors.systemGreen,size: 34,)
  },
];
