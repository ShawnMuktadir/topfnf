import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:topfnf/screens/components/analysis_component.dart';
import 'package:topfnf/screens/components/chat_component.dart';
import 'package:topfnf/screens/components/dashboard_component.dart';
import 'package:topfnf/screens/components/menu_component.dart';
import 'package:topfnf/screens/components/search_component.dart';
import 'package:topfnf/utils/color_utils.dart';
import 'package:topfnf/utils/dimension_utils.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  static const List componentsList = [
    DashboardComponent(),
    ChatComponent(),
    AnalysisComponent(),
    SearchComponent(),
    MenuComponent(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void pageChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RGB.primaryColor,
      body: componentsList.elementAt(selectedIndex),
      floatingActionButton: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: Dimensions.smSize,
            horizontal: Dimensions.defaultSize,
          ),
          decoration: BoxDecoration(
            color: RGB.lightColor,
            borderRadius: BorderRadius.circular(
              Dimensions.smSize,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/icons/edit.svg',
                width: Dimensions.defaultSize,
                color: RGB.primaryColor,
              ),
              const Icon(
                Icons.add_outlined,
                size: Dimensions.defaultSize,
                color: RGB.primaryColor,
              ),
              const Text(
                'Post',
                style: TextStyle(
                  color: RGB.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: RGB.primaryLightColor,
        selectedItemColor: RGB.whiteColor,
        unselectedItemColor: RGB.whiteColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/bottomsheet/home.svg',
              width: Dimensions.defaultSize * 1.75,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/bottomsheet/chat.svg',
              width: Dimensions.defaultSize * 1.75,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/bottomsheet/analysis.svg',
              width: Dimensions.defaultSize * 1.75,
            ),
            label: 'Analysis',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/bottomsheet/search.svg',
              width: Dimensions.defaultSize * 1.75,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/bottomsheet/menu.svg',
              width: Dimensions.defaultSize * 1.75,
            ),
            label: 'Manu',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
