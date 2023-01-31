import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class tracker extends StatelessWidget {
  String name;
  Icon icon;
  tracker({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(89, 139, 237, 1),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon,
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Inter',
                // fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color.fromRGBO(89, 139, 237, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
