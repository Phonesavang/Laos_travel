// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Central/Central.dart';
import 'package:my_app/Central/Vientiane/ThaLuang.dart';
import 'package:my_app/North/LuangPrabang/ChiangThong.dart';
import 'package:my_app/North/North.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/South/South.dart';
import 'package:my_app/About/About.dart';
import 'package:my_app/Home/Boxhome.dart';
import 'package:my_app/Home/Itemhome.dart';
import 'package:my_app/UserPost.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<String> img = [
    "asset/img/ChiangThong_1.jpg",
    "asset/img/ThaLuang_1.jpg",
    "asset/img/S21.JPG",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFffffff),
        elevation: 0,
        title: const Center(
          child: Text(
            "Laos travel",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF181818)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage("asset/img/Dy.jpg"),
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "ຍອດນິຍົມ",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFF181818),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Boxhome(img),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => North()),
                      );
                    },
                    child: Container(
                      height: 70,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFF00abb3),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: const Text(
                        "ພາກເໜືອ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Central()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      height: 70,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFF00abb3),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: const Text(
                        "ພາກກາງ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => South()),
                      );
                    },
                    child: Container(
                      height: 70,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xFF00abb3),
                          borderRadius: BorderRadius.circular(8.0)),
                      child: const Text(
                        "ພາກໃຕ້",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Itemhome('asset/img/ChiangThong_1.jpg', "ວັດຊຽງທອງ",
                  "ແຂວງ ຫຼວງພະບາງ", ChiangThong()),
              Itemhome('asset/img/ThaLuang_1.jpg', "ພະທາດຫຼວງວຽງຈັນ",
                  "ນະຄອນຫຼວງວຽງຈັນ", ThaLuang()),
              Itemhome('asset/img/S21.JPG', "ວັດພູຈຳປາສັກ", "ແຂວງ ຈຳປາສັກ",
                  WatPhu()),
            ],
          ),
        )
      ]),
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
