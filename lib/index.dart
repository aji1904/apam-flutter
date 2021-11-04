import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
// import 'package:badges/badges.dart';
import 'package:my_app/chat.dart';
import 'package:my_app/home.dart';
import 'package:my_app/profil.dart';
import 'package:my_app/search.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<MainApp> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    NavHome(),
    ChatApp(),
    SearchApp(),
    ProfilApp(),
  ];

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(231, 247, 233, 1),
      // appBar: AppBar(
      //   elevation: 4,
      //   backgroundColor: const Color.fromRGBO(231, 247, 233, 1),
      //   title: const Text(
      //     'My App',
      //     style: TextStyle(
      //       color: Color.fromRGBO(44, 208, 72, 1),
      //     ),
      //   ),
      //   actions: <Widget>[
      //     Badge(
      //       badgeContent: const Text('10',
      //           style: TextStyle(color: Colors.white, fontSize: 8)),
      //       child: IconButton(
      //           onPressed: onPressed,
      //           icon: const Icon(
      //             Icons.notifications,
      //             color: Color.fromRGBO(44, 208, 72, 1),
      //           )),
      //       badgeColor: Colors.red.shade400,
      //       position: BadgePosition.topEnd(end: 23, top: 8),
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(250, 255, 251, 1),
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
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: const Color.fromRGBO(44, 208, 72, 1),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[200]!,
              color: const Color.fromRGBO(44, 208, 72, 1),
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.comments,
                  text: 'Chat',
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Cari',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profil',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
