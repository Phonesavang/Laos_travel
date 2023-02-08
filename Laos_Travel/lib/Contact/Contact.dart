import 'package:flutter/material.dart';
import 'package:my_app/Contact/Profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00abb3),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00abb3),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "ກ່ຽວກັບພວກເຮົາ",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFFffffff)),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 750,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 10.0),
                decoration: const BoxDecoration(
                    color: Color(0xFFf6f6f6),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "ພາກວິຊາ",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF181818)),
                    ),
                    const Text(
                      "ວິສະວະກຳຄອມພິວເຕີ ແລະ ເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF181818)),
                    ),
                    Container(
                      width: 358,
                      height: 120,
                      margin: const EdgeInsets.only(top: 25.0),
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
                          Container(
                            height: 110,
                            width: 110,
                            margin: const EdgeInsets.only(left: 10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2.0, color: const Color(0xFF404A53)),
                                shape: BoxShape.circle),
                            child: const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("asset/img/savath.jpg"),
                                )),
                          ),
                          Container(
                            width: 185,
                            height: 90,
                            margin: EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "ອຈ ປອ ສະຫວາດ ໄຊປະດິດ",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 3, bottom: 4),
                                  child: Text(
                                    "ອາຈານສອນ ແລະ ອາຈານທີປຶກສາ",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.facebook,
                                      color: Colors.blue.shade800,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 13.0),
                                      child: Icon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.purple.shade600,
                                        size: 20,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 13.0),
                                      child: Icon(
                                        FontAwesomeIcons.twitter,
                                        color: Colors.blue,
                                        size: 20,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 13.0),
                                      child: Icon(
                                        FontAwesomeIcons.github,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Profile("asset/img/Yui.jpg", "ທ ພອນສະຫວ່າງ ສາຍເຊໂດນ",
                        "ລະຫັດນັກສຶກສາ : 225N081820", "ໜ້າທີ : Dev"),
                    Profile(
                        "asset/img/ludyy.jpg",
                        "ນ ດາລາດອນ ອາລິຍະ",
                        "ລະຫັດນັກສຶກສາ : 225N084720",
                        "ໜ້າທີ : UX/UI ແລະ ຫາຂໍ້ມູນ"),
                    Profile(
                        "asset/img/Aiy.JPEG",
                        "ທ ເພັດສະໝອນ ສິມມາ",
                        "ລະຫັດນັກສຶກສາ : 225N081420",
                        "ໜ້າທີ : ຫາຂໍ້ມູນ ແລະ ອອກແບບໂລໂກ້"),
                    Profile(
                        "asset/img/Aay.jpg",
                        "ນ ຖົງເງິນ ວົງຜາສຸກ",
                        "ລະຫັດນັກສຶກສາ : 225N078120",
                        "ໜ້າທີ : ຫາຂໍ້ມູນ ແລະ ຈັດເອກະສານ"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
