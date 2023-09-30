
import 'package:flutter/material.dart';
import 'package:public_toilets/models/toilet.dart';

class ToiletListItem extends StatelessWidget {
  final Toilet toilet;

  const ToiletListItem({
    super.key,
    required this.toilet,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.home,
              size: 30.0,
            ),
            Expanded(
              child: Text(
                toilet.name,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.red,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    // collection if, ไม่ใช่ if statement
                    if (toilet.point > 2.5)
                      Text('GOOD'),

                    // collection for, ไม่ใช่ for statement
                    for (var i = 0; i < toilet.point.floor(); i++)
                      Icon(Icons.star),
                    if (toilet.point % 1 >= 0.5) // เพิ่มครึ่งดาวถ้ามีคะแนนครึ่ง
                      Icon(Icons.star_half),
                    Text(toilet.point.toString()),
                  ],
                ), //คะแนน
                Text(toilet.distance.toString()), //ระยะห่าง
              ],
            ),
          ],
        ),
      ),
    );
  }
}