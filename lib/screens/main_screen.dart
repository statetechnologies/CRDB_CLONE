import 'package:crdb_simbanking/pages/overview.dart';
import 'package:crdb_simbanking/pages/payments.dart';
import 'package:crdb_simbanking/pages/settings.dart';
import 'package:crdb_simbanking/pages/cashout.dart';
import 'package:crdb_simbanking/pages/transfers.dart';
import 'package:crdb_simbanking/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> pages = [
    OverviewScreen(),
    TransfersScreen(),
    CashoutScreen(),
    PaymentsScreen(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor2,
      body: Container(
        // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          color: AppColors.greyColor2,
          child: pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              size: 22.sp,
            ),
            label: 'Overview',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.swap_horiz_outlined,
              size: 22.sp,
            ),
            label: 'Transfers',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_membership_outlined,
              size: 22.sp,
            ),
            label: 'Cashout',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business_center_outlined,
              size: 22.sp,
            ),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              size: 22.sp,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        iconSize: 22.sp,
        elevation: 0,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle:
            TextStyle(fontSize: 12.sp, color: Colors.white),
        backgroundColor: Colors.transparent,
        selectedIconTheme: const IconThemeData(color: Colors.green),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        selectedLabelStyle: TextStyle(fontSize: 12.sp, color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
