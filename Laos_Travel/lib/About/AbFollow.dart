import 'package:flutter/material.dart';

class AbFollow extends StatelessWidget {
  // const AbFollow({super.key});
  String heder;
  String title;
  double width;
  double sizeH;
  double sizeT;
  // double border;
  AbFollow(this.heder, this.title, this.width, this.sizeH, this.sizeT);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(heder, style: TextStyle(fontSize: sizeH)),
            Text(title,
                style: TextStyle(fontSize: sizeT, color: Colors.black45)),
          ],
        ),
      ),
    );
  }
}
