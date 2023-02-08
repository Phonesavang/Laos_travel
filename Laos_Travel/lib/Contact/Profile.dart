import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  // const Profile({super.key});
  String img;
  String name;
  String title;
  String info;
  Profile(this.img, this.name, this.title, this.info);
  Color color = Color(0xFF181818);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 100,
      margin: const EdgeInsets.only(top: 18.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFFffffff),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
                blurRadius: 4.0,
                color: Colors.black26,
                offset: Offset(0.0, 3.0)),
            const BoxShadow(
                blurRadius: 10.0,
                color: Colors.white,
                offset: Offset(4.0, 0.0)),
          ]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 80,
                )),
          ),
          Container(
            width: 185,
            height: 80,
            margin: EdgeInsets.only(left: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold, color: color),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 12, color: color, fontWeight: FontWeight.w400),
                ),
                Text(
                  info,
                  style: TextStyle(
                      fontSize: 12, color: color, fontWeight: FontWeight.w400),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue.shade800,
                      size: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.purple.shade600,
                        size: 15,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 13.0),
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.blue,
                        size: 15,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 13.0),
                      child: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.black,
                        size: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
