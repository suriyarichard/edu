import 'package:edu/screens/home.dart';
import 'package:edu/widgets/chat.dart';
import 'package:edu/widgets/hub.dart';
import 'package:edu/widgets/learn.dart';
import 'package:edu/widgets/profile.dart';
import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _HomepageState();
}

class _HomepageState extends State<mainPage> {
  List pages = [
    Homepages(),
    learn(),
    hub(),
    chart(),
    profile(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.white,
        body: pages[currentIndex],
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 2),
                    height: 4,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF81B4FF),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ],
              ),
              BottomNavigationBar(
                // unselectedFontSize: 0,

                // selectedFontSize: 0,

                iconSize: 30,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                onTap: onTap,
                currentIndex: currentIndex,
                selectedItemColor: Color.fromRGBO(89, 139, 237, 1),
                unselectedItemColor: Color.fromRGBO(109, 116, 122, 1),
                // showSelectedLabels: false,
                // showUnselectedLabels: false,
                elevation: 1,

                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu_book_rounded), label: 'Learn'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.grid_view_outlined), label: 'Hub'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.chat_bubble_outline_rounded),
                      label: 'Chat'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.supervised_user_circle),
                      label: 'Profile')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
