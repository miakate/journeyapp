import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:journeyapp/screens/dashboard/components/tab_navigation.dart';
import '../../../constants.dart';

class TabsPage extends StatefulWidget {
  final String title = "Home";

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;
  double _height;
  double _width;

  get tabItem => TabNavigationItem.items;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: null,
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => {
              _currentIndex = index,
            }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_sharp,
              // size: 70,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
              // color: _currentIndex == 1
              //     ? Styles.primaryPink
              //     : Styles.primaryDarkPurple,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.family_restroom_outlined,
              // color: _currentIndex == 2
              // ? Styles.primaryPink
              // : Styles.primaryDarkPurple,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              // color: _currentIndex == 3
              // ? Styles.primaryPink
              // : Styles.primaryDarkPurple,
            ),
            title: SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
