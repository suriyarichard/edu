import 'package:edu/utils/card.dart';
import 'package:edu/utils/cardThree.dart';
import 'package:edu/utils/cardTwo.dart';
import 'package:edu/utils/title.dart';
import 'package:edu/widgets/tracker.dart';
import 'package:flutter/material.dart';

class Homepages extends StatefulWidget {
  const Homepages({super.key});

  @override
  State<Homepages> createState() => _HomepageState();
}

class _HomepageState extends State<Homepages> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 249, 254, 1),
      appBar: AppBar(
          elevation: 0,
          // backgroundColor: Colors.white,
          backgroundColor: Color.fromRGBO(246, 249, 254, 0.5),
          leading: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.chat_rounded,
                    size: 26.0,
                    color: Colors.grey,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    size: 26.0,
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                )),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Hello, Priya!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Lora',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "What do you wanna learn today?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Padding(
                // padding: const EdgeInsets.all(8.0),
                // child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        tracker(
                          name: 'Programs',
                          icon: Icon(
                            Icons.book_outlined,
                            color: Color.fromRGBO(89, 139, 237, 1),
                          ),
                        ),
                        tracker(
                            name: 'Get help',
                            icon: Icon(
                              Icons.help,
                              color: Color.fromRGBO(89, 139, 237, 1),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        tracker(
                            name: 'Learn',
                            icon: Icon(
                              Icons.menu_book_outlined,
                              color: Color.fromRGBO(89, 139, 237, 1),
                            )),
                        tracker(
                            name: 'DD Tracker',
                            icon: Icon(
                              Icons.bar_chart_rounded,
                              color: Color.fromRGBO(89, 139, 237, 1),
                            )),
                      ],
                    )
                  ],
                ),
                // ),
                SizedBox(
                  height: 40,
                ),
                titleText(
                  Title: "Programs for yous",
                ),
                SizedBox(
                  height: 15,
                ),
                cardTile(),
                SizedBox(
                  height: 30,
                ),
                titleText(
                  Title: "Events and experiences",
                ),
                SizedBox(
                  height: 15,
                ),
                cardTile2(),
                SizedBox(
                  height: 30,
                ),
                titleText(
                  Title: "Lessons for you",
                ),
                SizedBox(
                  height: 15,
                ),
                cardTile3(),
              ]),
        ),
      ),
    );
  }
}
