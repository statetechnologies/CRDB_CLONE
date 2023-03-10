import 'package:crdb_simbanking/widgets/greetings.dart';
import 'package:crdb_simbanking/widgets/page_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:crdb_simbanking/widgets/tabs_section.dart';
import 'package:intl/intl.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen>
    with SingleTickerProviderStateMixin {
  final _pageController = PageController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
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
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.82,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.038,),
            TopGreetings(),
            SizedBox(height: 18),
            TabsSection(
              controller: _tabController,
              tabs: ['ACCOUNTS', 'CARDS', 'LOANS'],
            ),
            SizedBox(height:  MediaQuery.of(context).size.height*0.038,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.653,
              child: PageView(
                physics:  NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  AccountsTab(),
                  CardsTab(),
                  LoansTab(),
                ],
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  //TODO: Implement intl dependency to get this working
  numberFormat(number){
    var f = NumberFormat("###,###", "en_US");
    var newNum = f.format(number);
    return newNum;
  }
}
