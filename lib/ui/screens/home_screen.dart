import 'package:flutter/material.dart';
import 'package:wave/ui/screens/home_screens/home.dart';
import 'package:wave/ui/styles/my_app_theme.dart';
import 'package:wave/ui/styles/my_images.dart';

import 'package:wave/utiles/utility.dart';
import '../../ui/styles/my_app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final Screens = [
    const Home(),
    const Center(child: Text('Navigation', style: TextStyle(fontSize: 60))),
    const Center(child: Text('home', style: TextStyle(fontSize: 60))),
    const Center(child: Text('Navigation', style: TextStyle(fontSize: 60))),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Utility.statusBarColor(MyAppTheme.backgroundColor);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.01,
                    ),
                    Image.asset(
                      MyImages.logo,
                      fit: BoxFit.cover,
                      height: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add,
                        size: 40.0,
                        color: MyAppTheme.textWhite,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            centerTitle: true,
          ),
        ),
        body: Screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.room,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: '',
                backgroundColor: MyAppTheme.textBorder,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: MyAppTheme.buttonColor,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 15),
      ),
    );
  }
}
