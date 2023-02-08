import 'package:flutter/material.dart';
import 'package:my_app/About/AboutPost.dart';

class Post extends StatelessWidget {
  // const Post({super.key});
  String img;
  String heder;
  String title;
  String img_1;
  String img_2;
  String img_3;
  String img_4;
  String title_1;
  String title_2;
  String title_3;
  String title_4;
  String title_5;

  Post(this.img, this.heder, this.title, this.img_1, this.img_2, this.img_3,
      this.img_4, this.title_1, this.title_2, this.title_3, this.title_4,this.title_5);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AboutPost(heder, img_1, img_2, img_3,
                      img_4, title_1, title_2, title_3, title_4,title_5)));
        },
        child: Container(
          width: 350,
          height: 100,
          margin: const EdgeInsets.only(top: 25.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Color(0xFFf9f9f9),
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
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                    width: 90,
                    height: 70,
                  ),
                ),
                Container(
                  width: 180,
                  height: 80,
                  margin: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        heder,
                        style: const TextStyle(
                            fontFamily: "Tiktok",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3, bottom: 4),
                        child: Text(
                          title,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      const Text("Mar 21",
                          style:
                              TextStyle(fontSize: 10, color: Colors.black45)),
                    ],
                  ),
                ),
                Container(
                    height: 80,
                    width: 30,
                    alignment: Alignment.topRight,
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: const Icon(Icons.more_vert),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
