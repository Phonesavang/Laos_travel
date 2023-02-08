import 'package:flutter/material.dart';
import 'package:my_app/About/AbFollow.dart';
import 'package:my_app/UserPost.dart';

class AboutPost extends StatelessWidget {
  // const AboutPost({super.key});
  String name;
  String title_1;
  String title_2;
  String title_3;
  String title_4;
  String title_5;
  String img_1;
  String img_2;
  String img_3;
  String img_4;
  AboutPost(this.name, this.img_1, this.img_2, this.img_3, this.img_4,
      this.title_1, this.title_2, this.title_3, this.title_4, this.title_5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00abb3),
      appBar: AppBar(
        backgroundColor: Color(0xFF00abb3),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Laos travel",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFffffff)),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            )),
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            margin: const EdgeInsets.only(
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.0, color: const Color(0xFF00abb3)),
                                shape: BoxShape.circle),
                            child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("asset/img/Dy.jpg"),
                                )),
                          ),
                          const Text(
                            "DALAPHONE ALIYA",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                      AbFollow("10", "Check in", 80, 15, 12),
                      Container(
                          decoration: const BoxDecoration(
                              // color: Colors.amber.shade200,
                              border: Border(
                                  right: BorderSide(
                                      width: 2.0, color: Colors.black26),
                                  left: BorderSide(
                                      width: 2.0, color: Colors.black26))),
                          child: AbFollow("170", "Followers", 90, 15, 12)),
                      AbFollow("40", "Following", 80, 15, 12),
                    ],
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: const BoxDecoration(
                    color: Color(0xFFf9f9f9),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                  fontFamily: "Tiktok",
                                  fontSize: 15,
                                  color: Color(0xFF181818),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Mar 21",
                              style: TextStyle(
                                  fontFamily: "Tiktok",
                                  fontSize: 12,
                                  color: Color.fromRGBO(24, 24, 24, 0.5),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  img_1,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 160,
                                )),
                            Container(
                              width: 180,
                              height: 100,
                              child: Text(
                                title_1,
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xFF181818)),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          title_2,
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF181818)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                img_2,
                                fit: BoxFit.cover,
                                height: 100,
                                width: 170,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                img_3,
                                fit: BoxFit.cover,
                                height: 100,
                                width: 170,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            title_3,
                            style: const TextStyle(
                                fontSize: 12, color: Color(0xFF181818)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 160,
                              child: Text(
                                title_4,
                                style: const TextStyle(
                                    fontSize: 12, color: Color(0xFF181818)),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                img_4,
                                fit: BoxFit.cover,
                                height: 100,
                                width: 180,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Text(
                            title_5,
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF181818)),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => UserPost()));
        },
        backgroundColor: Color(0xFF00abb3),
        child: const Icon(Icons.add),
      ),
    );
  }
}
