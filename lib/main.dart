import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
        bottomNavigationBar: BotNavBar(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  @override
  Widget build(BuildContext context) {
    int navBarIndex = 0;

    const navBarColor = Color.fromRGBO(17, 44, 72, 1);
    const buttonBackgroundColor = Color.fromRGBO(251, 123, 52, 1);
    const navBarLabelStyle =
        TextStyle(fontWeight: FontWeight.bold, color: Colors.white);

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home,
              color: navBarIndex == 0 ? Colors.white : Colors.grey,
            ),
            label: 'Home',
            labelStyle: navBarLabelStyle,
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.map,
              color: navBarIndex == 1 ? Colors.white : Colors.grey,
            ),
            label: 'Navigation',
            labelStyle: navBarLabelStyle,
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.notifications,
              color: navBarIndex == 2 ? Colors.white : Colors.grey,
            ),
            label: 'Notifications',
            labelStyle: navBarLabelStyle,
          ),
        ],
        onTap: (index) {
          setState(() {
            navBarIndex = index;
            print(navBarIndex);
          });
        },
        color: navBarColor,
        buttonBackgroundColor: buttonBackgroundColor,
        animationCurve: Curves.easeInOutQuint,
        animationDuration: const Duration(milliseconds: 300),
        height: 75,
      ),
    );
  }
}
