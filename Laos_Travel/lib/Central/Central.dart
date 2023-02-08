import 'package:flutter/material.dart';
import 'package:my_app/Central/Khammuan/Khammuan.dart';
import 'package:my_app/Central/Viangchan/Viangchan.dart';
import 'package:my_app/Central/Vientiane/Vientiane.dart';
import 'package:my_app/About/About.dart';
import 'package:my_app/Model/ModelCity.dart';
import 'package:my_app/UserPost.dart';

class Central extends StatelessWidget {
  // const Central({super.key});

  List<String> item = [
    "ນະຄອນຫຼວງ",
    "ຄຳມ່ວນ",
    "ສະຫວັນນະເຂດ",
    "ວຽງຈັນ",
    "ໄຊສົມບູນ",
    "ບໍລິຄຳໄຊ",
  ];
  List<Widget> routWg = [
    Vientiane(),
    Khammuan(),
    Khammuan(),
    Vienchan(),
    Khammuan(),
    Khammuan(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFffffff),
      appBar: AppBar(
        backgroundColor: Color(0xFFffffff),
        // toolbarHeight: 60,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Laos travel",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF181818)),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20),
                  child: const TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        size: 25,
                        color: Colors.black45,
                      ),
                      hintText: 'Search',
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(width: 1, color: Colors.black45),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "ແຫຼ່ງທ່ອງທ່ຽວພາກກາງ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF181818)),
                  textAlign: TextAlign.left,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: item.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 25),
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => routWg[index]),
                              );
                            },
                            child: Text(
                              item[index],
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF00ABB3)),
                            ),
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ModelCity(
                        "asset/img/ThaLuang_6.jpg",
                        "ນະຄອນຫຼວງ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ",
                        Vientiane()),
                    ModelCity(
                        "asset/img/C20.jpg",
                        "ຄຳມ່ວນ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ",
                        Khammuan()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ModelCity(
                        "asset/img/C30.JPG",
                        "ສະຫວັນນະເຂດ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ",
                        Central()),
                    ModelCity(
                        "asset/img/C40.JPG",
                        "ວຽງຈັນ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ",
                        Vienchan()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ModelCity(
                        "asset/img/Saisombun_1.jpg",
                        "ໄຊສົມບູນ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ",
                        Central()),
                    ModelCity(
                        "asset/img/Borlikhamsai.jpg",
                        "ບໍລິຄຳໄຊ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ",
                        Central()),
                  ],
                ),
              ],
            ),
          )
        ],
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
