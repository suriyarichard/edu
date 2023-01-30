import 'dart:ffi';

import 'package:edu/models/info.dart';
import 'package:edu/utils/card.dart';
import 'package:edu/utils/cardTwo.dart';
import 'package:edu/utils/title.dart';
import 'package:edu/widgets/tracker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                    fontWeight: FontWeight.w500,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          tracker(
                            name: 'Programs',
                          ),
                          tracker(
                            name: 'Get help',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          tracker(
                            name: 'Learn',
                          ),
                          tracker(
                            name: 'DD Tracker',
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                titleText(Title: "Programs for yous"),
                SizedBox(
                  height: 10,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       "Programs for you",
                //       style: TextStyle(
                //           fontSize: 20,
                //           color: Colors.black,
                //           fontFamily: 'Lora',
                //           fontStyle: FontStyle.normal,
                //           fontWeight: FontWeight.w500),
                //     ),
                //     Row(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Text(
                //             'View all',
                //             style: TextStyle(
                //                 fontSize: 15,
                //                 fontFamily: 'Inter',
                //                 fontWeight: FontWeight.w500,
                //                 fontStyle: FontStyle.normal,
                //                 color: Colors.grey),
                //           ),
                //         ),
                //         Icon(
                //           Icons.arrow_right_alt_rounded,
                //           size: 25,
                //           color: Colors.grey,
                //         ),
                //       ],
                //     )
                //   ],
                // ),
                // Container(
                //   margin: const EdgeInsets.symmetric(vertical: 16.0),
                //   height: 300,
                //   width: 250,
                //   child: PageView.builder(
                //       onPageChanged: (index) {
                //         setState(() {
                //           _selectedIndex = index;
                //         });
                //       },
                //       itemCount: productList.length,
                //       itemBuilder: ((context, index) {
                //         var banner = productList[index];
                //         var _scale = _selectedIndex == index ? 1.0 : 0.8;
                //         return TweenAnimationBuilder(
                //           duration: Duration(microseconds: 350),
                //           tween: Tween(begin: _scale, end: _scale),
                //           builder: (BuildContext context, double value,
                //               Widget? child) {
                //             return Transform.scale(scale: value, child: child);
                //           },
                //           child: SizedBox(
                //             // width: 250,
                //             // height: 400,
                //             child: Card(
                //               elevation: 12,
                //               child: ClipRRect(
                //                 // borderRadius: const BorderRadius.all(Radius.circular(10)),
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Image.asset(
                //                       productList[index].imagePath,
                //                       fit: BoxFit.cover,
                //                       // width: 150,
                //                       // height: 180,
                //                     ),
                //                     const SizedBox(
                //                       height: 10,
                //                     ),
                //                     Padding(
                //                       padding: const EdgeInsets.all(8.0),
                //                       child: Text(
                //                         productList[index].title,
                //                         style: const TextStyle(fontSize: 15),
                //                       ),
                //                     ),
                //                     Padding(
                //                       padding: const EdgeInsets.symmetric(
                //                           horizontal: 8),
                //                       child: Row(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.spaceBetween,
                //                         children: [
                //                           Text(
                //                             '\$${productList[index].lessons}',
                //                             style: const TextStyle(
                //                                 fontWeight: FontWeight.bold),
                //                           ),
                //                           Text(
                //                             '${productList[index].tag}',
                //                             style: const TextStyle(
                //                                 color: Colors.blue),
                //                           )
                //                         ],
                //                       ),
                //                     )
                //                   ],
                //                 ),
                //               ),
                //             ),
                //           ),
                //           child: Container(
                //             margin:
                //                 const EdgeInsets.symmetric(horizontal: 16.0),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(20),
                //               image: DecorationImage(
                //                   image:
                //                       AssetImage(productList[index].imagePath),
                //                   fit: BoxFit.cover),
                //             ),
                //           ),
                //         );
                //       })),
                // ),
                cardTile(),

                SizedBox(
                  height: 20,
                ),
                titleText(
                  Title: "Events and experiences",
                ),
                SizedBox(
                  height: 10,
                ),
                cardTile(),
                SizedBox(
                  height: 20,
                ),
                titleText(
                  Title: "Lessons for you",
                ),
                SizedBox(
                  height: 10,
                ),
                cardTile2(),

                // Card(
                //   child: SingleChildScrollView(
                //     scrollDirection: Axis.horizontal,
                //     child: Container(
                //       width: 500,
                //       height: 200,
                //     ),
                //   ),
                // )
              ]),
        ),
      ),
    );
  }
}
