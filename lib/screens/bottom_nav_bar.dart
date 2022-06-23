import 'package:flutter/material.dart';
import 'package:otus_flutter/screens/start_screens/input_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[

    const Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    const InputScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xFF2ECC71),
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza_rounded),
              label: 'Рецепты',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Вход',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF2ECC71),
          onTap: _onItemTapped,
        ));
  }
}
