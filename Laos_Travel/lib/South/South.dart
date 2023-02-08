import 'package:flutter/material.dart';
import 'package:my_app/Central/Khammuan/Khammuan.dart';
import 'package:my_app/South/Champasuk/Champasuk.dart';
import 'package:my_app/About/About.dart';
import 'package:my_app/Model/ModelCity.dart';
import 'package:my_app/UserPost.dart';

class South extends StatelessWidget {
  // const Central({super.key});

  List<String> item = [
    "ສາລະວັນ",
    "ຈຳປາສັກ",
    "ອັດຕາປື",
    "ເຊກອງ",
  ];
  List<Widget> routWg = [
    Champasuk(),
    Champasuk(),
    Champasuk(),
    Champasuk(),
    Champasuk(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFFffffff),
      appBar: AppBar(
        backgroundColor: Color(0xFFffffff),
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
                          borderSide:
                              BorderSide(width: 1, color: Colors.black45)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "ແຫຼ່ງທ່ອງທ່ຽວພາກໃຕ້",
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
                          margin: const EdgeInsets.only(right: 35),
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
                                  color: Color(0xFF00abb3)),
                            ),
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ModelCity("asset/img/S10.JPG", "ສາລະວັນ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ", South()),
                    ModelCity(
                        "asset/img/S21.JPG",
                        "ຈຳປາສັກ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ",
                        Champasuk()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ModelCity("asset/img/UTP.jpg", "ອັດຕາປື",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ", South()),
                    ModelCity("asset/img/Sekong.jpg", "ເຊກອງ",
                        "ລວມແຫຼ່ງສະຖານທີ່ທ່ອງທ່ຽວທີ່ເປັນໄຮໄລຂອງແຂວງ ", South()),
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
