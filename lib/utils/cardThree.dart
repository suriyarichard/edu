import 'dart:math';
import 'dart:convert';

import 'package:edu/models/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:http/http.dart' as http;

class cardTile3 extends StatefulWidget {
  const cardTile3({super.key});

  @override
  State<cardTile3> createState() => _cardTileState();
}

class _cardTileState extends State<cardTile3> {
  var resultResponse;

  Future apicall() async {
    http.Response response;
    response = await http.get(
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/lessons"));

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
      height: 310,
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
                    child: Card(
                      elevation: 0,
                      child: ClipRRect(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/pic3.png",
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
                                  Text(
                                    '${data['items'][index]['duration']} min',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.lock,
                                      color: Colors.grey,
                                    ),
                                    label: const Text(''),
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
