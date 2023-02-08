import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00abb3),
      appBar: AppBar(
        backgroundColor: Color(0xFF00abb3),
        iconTheme: const IconThemeData(
          color: Colors.white, //change your color here
        ),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "ແກ້ໄຂໂປຣໄຟລ໌",
          style: TextStyle(fontSize: 25, color: Color(0xFFffffff)),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            color: Color(0xFFffffff),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                      height: 170,
                      width: 170,
                      margin: const EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 3.0, color: const Color(0xFF00abb3)),
                          shape: BoxShape.circle),
                      child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("asset/img/Dy.jpg"),
                          ))),
                  Positioned(
                    top: 160,
                    right: 5,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF00abb3),
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              EditText("Name", "DALAPHONE ALIYA"),
              EditText("Username", "DALAPHONE ALIYA"),
              EditText("Email", "dalaphone00@gmail.com"),
              EditText("Phone", "+865 2088236414"),
              EditText("Short Bio", ""),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      height: 27,
                      width: 107,
                      child: ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00abb3),
                        ),
                        child: const Text("Save",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EditText extends StatelessWidget {
  // const EditText({super.key});
  String title;
  String info;

  EditText(this.title, this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Color(0xFFcccccc)))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14, color: Color(0xFFA7A0A0)),
          ),
          Text(
            info,
            style: TextStyle(fontSize: 16, color: Color(0xFF181818)),
          ),
        ],
      ),
    );
  }
}
