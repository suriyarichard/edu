import 'package:edu/models/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class cardTile extends StatefulWidget {
  const cardTile({super.key});

  @override
  State<cardTile> createState() => _cardTileState();
}

class _cardTileState extends State<cardTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ScrollSnapList(
        itemBuilder: _buildListItem,
        itemCount: productList.length,
        itemSize: 350,
        onItemFocus: (index) {},
        // dynamicItemSize: true,
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    // Product product = productList[index];
    return SizedBox(
      width: 250,
      // height: 500,
      child: Card(
        elevation: 0,
        child: ClipRRect(
          // borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                productList[index].imagePath,
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
                  '${productList[index].tag}',
                  style: const TextStyle(color: Colors.blue),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  productList[index].title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${productList[index].lessons}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    // Text(
                    //   '${product.} Reviews',
                    //   style: const TextStyle(color: Colors.blue),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}