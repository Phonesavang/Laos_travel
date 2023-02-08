import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF00abb3),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: const Color(0xFF00abb3),
          centerTitle: true,
          elevation: 0,
          title: Text("Post"),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const TextField(
                          textAlignVertical: TextAlignVertical.bottom,
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                            hintText: "Topic",
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: const EdgeInsets.only(top: 25),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF00abb3)),
                              onPressed: (() {}),
                              child: const Text(
                                "Save",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
