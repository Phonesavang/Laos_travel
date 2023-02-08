// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';

import '../../Central/Viangchan/Thampukham.dart';
import '../../Central/Vientiane/Patusai.dart';
import '../../Central/Vientiane/ThaLuang.dart';
import '../LuangPrabang/ChiangThong.dart';
import '../LuangPrabang/TadKvangSe.dart';

class Anusathan extends StatefulWidget {
  @override
  State<Anusathan> createState() => _AnusathanState();
}

class _AnusathanState extends State<Anusathan> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/Bg.jpg",
    "asset/img/Bg.jpg",
    "asset/img/Bg.jpg",
    "asset/img/Bg.jpg",
    "asset/img/Bg.jpg",
  ];

  String bg = "asset/img/BgS.jpg";
    List<String> img = [
    "asset/img/ChiangThong_2.jpg",
    "asset/img/Patusai_2.jpg",
    "asset/img/TadKvangSe_2.jpg",
    "asset/img/ThaLuang_6.jpg",
    "asset/img/Thampukham_6.jpg",
  ];

  List<Widget> location = [
    ChiangThong(),
    Patusai(),
    TadKvangSe(),
    ThaLuang(),
    Thampukham(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
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
      body: Stack(children: [
        SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            bg,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "ອະນຸສະຖານທ່ານໄກສອນ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: "Tiktok"),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 230,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      color: Color(0xFFffffff),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                bg,
                                fit: BoxFit.cover,
                                height: 95,
                                width: 148,
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                              width: 195,
                              child: Text(
                                "ອະນຸສອນສະຖານປະທານ ໄກສອນ ພົມວິຫານ ຕັ້ງຢູ່ຫ່າງຈາກທ່າເຮືອທ່າດ່ານປະມານ 1 "
                                "ກິໂລແມັດ,ອະນຸສອນສະຖານ ຂອງທ່ານປະທານ ໄກສອນ ພົມວິຫານ ອະດີດປະທານປະເທດຂອງ "
                                "ສາທາລະນະລັດ ປະຊາທິປະໄຕ",
                                style: TextStyle(
                                    color: Color(0xFF181818), fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const SizedBox(
                          height: 132,
                          // ignore: prefer_const_constructors
                          child: Text(
                            "ປະຊາຊົນລາວ ຜູ້ລ່ວງລັບໄປແລ້ວ ແລະ ເປັນທີ່ເຄົາລົບຮັກຂອງປວງຊົນລາວທັງຊາດຢ່າງຍິ່ງ"
                            "ເພາະເມື່ອຕອນທີ່ ທ່ານຍັງມີຊີວິດຢູ່ ທ່ານໄດ້ສ້າງຄຸນປະໂຫຍດຢ່າງມະຫາສານໃຫ້ແກ່ປະເທດລາວ "
                            "ແລະ ປະຊາຊົນລາວ ໂດຍທ່ານໄດ້ເປັນຜູ້ນຳພາປະຊາຊົນລຸກຮືຂື້ນຕໍ່ສູ້ ຕ້ານພວກລ່າເມືອງຂື້ນທັງແບບເກົ່າ "
                            "ແລະ ແບບໃໝ່ ໃນທີ່ສຸດເພິ່ນກໍໄດ້ນຳພາປະຊາຊົນລາວກອບກູ້ເອກະລາດຂອງຊາດລາວໄດ້ສຳເລັດ ແລະ "
                            "ປະກາດສ້າງຕັ້ງ ສາທາລະນະລັດ ປະຊາທິປະໄຕ ປະຊາຊົນລາວ ໃນວັນທີ 2 ທັນວາ ຄ.ສ 1975.ໃນປັດຈຸບັນນີ້ປະຊາຊົນຊາວແຂວງບໍ່ແກ້ວນິຍົມໄປກາບໄຫວ້ອະນຸສອນສະຖານຂອງເພິ່ນຢ່າງຫຼວງຫຼາຍ.",
                            style: TextStyle(
                                color: Color(0xFF181818), fontSize: 12),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 10),
                          height: 100,
                          child: ListView.builder(
                              itemCount: item.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        item[index],
                                        height: 100,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                    ));
                              }),
                        ),
                        Container(
                          height: 90,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 15, bottom: 20),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset(
                            "asset/img/GPS.png",
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text(
                          "ລາຍການທີ່ໜ້າສົນໃຈ",
                          style:
                              TextStyle(color: Color(0xFF00abb3), fontSize: 12),
                        ),
                        Modelimgsc(img, location)
                      ],
                    ),
                  ),
                ),
              ),
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
