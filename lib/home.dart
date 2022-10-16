import 'package:beca/devices_page.dart';
import 'package:beca/inicio_page.dart';
import 'package:beca/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    InicioPage(),
    DevicesPage(),
    LoginPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFFF1FAFD),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              hoverColor: const Color(0xFF5090FE),
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              tabBackgroundColor: const Color(0xFF5090FE),
              color: const Color(0xFF5090FE),
              tabs:const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Inicio',
                ),
                GButton(
                  icon: LineIcons.cog,
                  text: 'Configuracion',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Perfil',
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