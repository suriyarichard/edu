import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class titleText extends StatelessWidget {
  String Title;
  titleText({super.key, required this.Title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Title,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Lora',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {},
              child: Text(
                'View all',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Colors.grey),
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              size: 25,
              color: Colors.grey,
            ),
          ],
        )
      ],
    );
  }
}
