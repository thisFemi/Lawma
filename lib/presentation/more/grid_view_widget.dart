import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem(this.imgName, this.title);
  final String imgName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: SizedBox(
              width: 180,
              height: 200,
              child: Image.asset(
                'assets/images/${imgName}',
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        )
      ],
    ));
  }
}
