import 'package:app/view/page/booking.dart';
import 'package:app/view/page/cari.dart';
import 'package:app/view/page/home.dart';
import 'package:app/view/page/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BookingApp(),
    Searchtarif(),
    ProfileApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 20,
      //   title: const Text('GoogleNavBar'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.greenAccent,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: (MediaQuery.of(context).size.width <= 320)
                ? GbuttonMini()
                : GbuttonFull(),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  GNav GbuttonMini() {
    return GNav(
      rippleColor: Colors.grey[300]!,
      hoverColor: Colors.grey[100]!,
      gap: 8,
      activeColor: Colors.black,
      iconSize: 24,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      duration: const Duration(milliseconds: 200),
      tabBackgroundColor: Colors.grey[100]!,
      color: Colors.black,
      tabs: const [
        GButton(
          icon: LineIcons.home,
          iconColor: Colors.blue,
          textColor: Colors.blue,
          iconActiveColor: Colors.blue,
        ),
        GButton(
          icon: LineIcons.mobilePhone,
          iconColor: Colors.blue,
          iconActiveColor: Colors.blue,
          textColor: Colors.blue,
        ),
        GButton(
          icon: LineIcons.search,
          iconColor: Colors.blue,
          iconActiveColor: Colors.blue,
          textColor: Colors.blue,
        ),
        GButton(
          icon: LineIcons.user,
          iconActiveColor: Colors.blue,
          iconColor: Colors.blue,
          textColor: Colors.blue,
        ),
      ],
      selectedIndex: _selectedIndex,
      onTabChange: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  // ignore: non_constant_identifier_names
  GNav GbuttonFull() {
    return GNav(
      rippleColor: Colors.grey[300]!,
      hoverColor: Colors.grey[100]!,
      gap: 8,
      activeColor: Colors.black,
      iconSize: 24,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      duration: const Duration(milliseconds: 200),
      tabBackgroundColor: Colors.grey[100]!,
      color: Colors.black,
      tabs: const [
        GButton(
          icon: LineIcons.home,
          text: "Home",
          iconColor: Colors.blue,
          textColor: Colors.blue,
          iconActiveColor: Colors.blue,
        ),
        GButton(
          icon: LineIcons.mobilePhone,
          text: 'Register',
          iconColor: Colors.blue,
          iconActiveColor: Colors.blue,
          textColor: Colors.blue,
        ),
        GButton(
          icon: LineIcons.search,
          text: 'Search',
          iconColor: Colors.blue,
          iconActiveColor: Colors.blue,
          textColor: Colors.blue,
        ),
        GButton(
          icon: LineIcons.user,
          text: 'Profile',
          iconActiveColor: Colors.blue,
          iconColor: Colors.blue,
          textColor: Colors.blue,
        ),
      ],
      selectedIndex: _selectedIndex,
      onTabChange: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
