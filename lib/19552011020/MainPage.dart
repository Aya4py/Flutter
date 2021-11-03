import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:alya_19552011020/19552011020/Dashboard.dart';
import 'package:alya_19552011020/19552011020/DatePicker.dart';
import 'package:alya_19552011020/19552011020/TimePicker.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPage createState() => _MainPageState();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  get icon => null;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            }
            );
          }
          children: [
            Dashboard(),
            DatePicker(),
            TimePicker(),
          ],)),
          bottomNavigationBar: buildBottomNavyBar(),

        ),
      ),
)
  }

  buildBottomNavyBar() {
    BottomNavyBarItem(
      icon: Icon(Icons.dashboard),
      title: Text('Dashboard'),
      activeColor; Colors.blueAccent,
      inactiveColor; Colors.blueAccent,
    ),
    BottomNavyBarItem(
      icon: Icon(Icons.date_range),
      title: Text('Date'),
      activeColor; Colors.redAccent,
      inactiveColor; Colors.redAccent,
    ),
    BottomNavyBarItem(
      icon: Icon(Icons.timer),
      title: Text('Time'),
      activeColor; Colors.greenAccent,
      inactiveColor; Colors.greenAccent,
          
         );
  }
 
  }
}
