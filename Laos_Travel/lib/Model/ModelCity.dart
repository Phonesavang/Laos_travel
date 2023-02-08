import 'package:flutter/material.dart';

class ModelCity extends StatelessWidget {
  // const Boxtral({super.key});
  String img;
  String heder;
  String title;
  Widget routn;
  ModelCity(this.img, this.heder, this.title, this.routn);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 175,
      height: 240,
      // decoration: BoxDecoration(color: Colors.grey.shade100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              height: 116,
              width: 175,
            ),
          ),
          Text(
            heder,
            style: const TextStyle(
                fontSize: 15,
                fontFamily: "Tiktok",
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 8),
            child: Text(
              title + heder,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => routn),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF00ABB3),
                  borderRadius: BorderRadius.circular(2.0)),
              child: const Padding(
                padding: EdgeInsets.only(top: 3, bottom: 3, left: 5, right: 5),
                child: Text(
                  "ກົດເບຶ່ງລາຍລະອຽດ",
                  style: TextStyle(
                      color: Color(0xFFffffff),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
