import 'dart:math';
import 'dart:convert';

import 'package:edu/models/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'package:intl/date_symbol_data_local.dart';

class cardTile2 extends StatefulWidget {
  const cardTile2({super.key});

  @override
  State<cardTile2> createState() => _cardTileState();
}

class _cardTileState extends State<cardTile2> {
  var resultResponse;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future apicall() async {
    http.Response response;
    response = await http.get(
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/programs"));

    if (response.statusCode == 200) {
      setState(() {
        resultResponse = response.body;
      });
    }

    // print(resultResponse);

    return resultResponse;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: FutureBuilder(
          future: apicall(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = json.decode(snapshot.data);
              return ScrollSnapList(
                itemCount: data['items'].length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 250,
                    // height: 500,
                    child: Card(
                      // elevation: 12,
                      elevation: 0,
                      child: ClipRRect(
                        // borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/pic1.png",
                              fit: BoxFit.cover,
                              // width: 150,
                              // height: 180,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${data['items'][index]['category']}',
                                style: const TextStyle(color: Colors.blue),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                data['items'][index]['name'],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '${data['items'][index]['lesson']} Lesson',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  OutlinedButton(
                                    onPressed: () {},
                                    child: Text('Book'),
                                    style: ButtonStyle(
                                        side: MaterialStateProperty.all(
                                            BorderSide(
                                      color: Colors.blue,
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                    ))),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemSize: 350,
                onItemFocus: (index) {},
              );
              // dynamicItemSize: true,
            } else if (snapshot.hasError) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please try again')));
            } else {
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      child: CircularProgressIndicator()),
                  SizedBox(height: 10),
                  Text(
                    'Loading....',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ));
            }
            return const Text('Loading....');
          }),
    );
  }
}
