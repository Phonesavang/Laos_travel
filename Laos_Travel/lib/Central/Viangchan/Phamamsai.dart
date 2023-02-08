import 'package:flutter/material.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';

import '../../North/LuangPrabang/ChiangThong.dart';
import '../../North/LuangPrabang/TadKvangSe.dart';
import '../Vientiane/Patusai.dart';
import '../Vientiane/ThaLuang.dart';
import 'Thampukham.dart';

class Phamamsai extends StatefulWidget {
  @override
  State<Phamamsai> createState() => _PhamamsaiState();
}

class _PhamamsaiState extends State<Phamamsai> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/Thampukham_2.jpg",
    "asset/img/Thampukham_3.jpg",
    "asset/img/Thampukham_4.jpg",
    "asset/img/Thampukham_5.jpg",
    "asset/img/Thampukham_6.jpg",
  ];

  String bg = "asset/img/C40.JPG";
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
                "ຜາໝາມໄຊ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
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
                                " ຜາຫນາມໄຊເປັນສະຖານທີ່ຈຸດຊົມວິວທີສວຍງາມທີ່ສຸດຂອງເມືອງວັງວຽງ, ໃຊ້ເວລາພຽງ  20-30 ນາທີ, ທ່ານຈະໄປເຖິງຈຸດຊົມວິວ, "
                                "ທ່ານຈະມີຄວາມຮູ້ສືກທີ່ຢາກຖ່າຍຮູບກັບລົດຈັກທີ່ຢູ່ຈອດຢູ່ຈອມຜາລົງໃນອິນສຕາແກມຂອງທ່ານທັນທີ, ເພີດເພີນໄປກັບ",
                                style: TextStyle(
                                    color: Color(0xFF181818), fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                "ເລື່ອນຂໍ້ຄວາມເພື່ອອ່ານຕໍ່",
                                style: TextStyle(
                                    color: Color(0xFF00abb3),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 130,
                              // ignore: prefer_const_constructors
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                  "ທິວທັດທີ່ສວຍງາມຂອງຜາຫີນປູນທີ່ອ້ອມຮອບໄປດ້ວຍປ່າໄມ້ ແລະ ທົ່ງນາທີ່ສວຍງາມໃນເວລາທີ່່ເຈົ້າພັກຜ່ອນຢູ່ຈອມຜາ."
                                  "ມີການເດີນທາງທີ່ສະດວກສະບາຍໄປຈຸດຊົມວິວຜາຫນາມໄຊພຽງແຕ່ຂ້າມຂົວໄມ້ນ້ຳຊອງເບື້ອງໂຮງແຮມ Riverside Boutique "
                                  "ແລ້ວເດີນທາງຕໍ່ຈົນຮອດເກືອບຮອດບລູລາກູນ 1. ຫຼັງຈາກນັ້ນກໍ່ລ້ຽວຊ້າຍໄປເສັ້ນທາງດິນແດງທ່ານຈະເຫັນປ້າຍບອກບ່ອນຈອດລົດ ແລະ ປ້າຍບອກທາງຂື້ນຜາຫນາມໄຊ."
                                  "ການເຊົ່າລົດຖີບ: ມີຄວາມສະດວກໃນການເຊົ່າລົດຖີບຢູ່ເມືອງວັງວຽງ, ລາຄາພຽງແຕ່ 30,000 ຕໍ່ມື້."
                                  "ການເຊົ່າລົດຈັກ: ສາມາດເຊົ່າລົດຈັກຢູ່ໂຮງແຮມ ຫຼື ບ້ານພັກຂອງທ່ານຕາມເວລາທີ່ທ່ານຕ້ອງການ, ລາຄາພຽງ 150,000  ຕໍ່ມື້ "
                                  "ການເຊົ່າລົດບັກກີ: ມີສອງແບບໃຫ້ເລືອກ: ແບບ 2ບ່ອນນັ່ງ ແລະ 4 ບ່ອນນັ່ງ, ລົດບັກກີ ກຽມພ້ອມທຸກເວລາທີ່ທ່ານຕ້ອງການການຜະຈົນໄພຢ່າງໃນເມືອງວັງວຽງ."
                                  "ຄ່າເຂົ້າຊົມ: 10,000 ກີບ ເວລາເປີດ/ປິດ: 5 ເຊົ້າ–5ແລງ",
                                  style: TextStyle(
                                      color: Color(0xFF181818), fontSize: 12),
                                ),
                              ),
                            ),
                          ],
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
