import 'package:flutter/material.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';

import '../../North/LuangPrabang/ChiangThong.dart';
import '../../North/LuangPrabang/TadKvangSe.dart';
import '../Viangchan/Thampukham.dart';
import 'ThaLuang.dart';

class Patusai extends StatefulWidget {
  @override
  State<Patusai> createState() => _PatusaiState();
}

class _PatusaiState extends State<Patusai> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/Patusai_2.jpg",
    "asset/img/Patusai_3.jpg",
    "asset/img/Patusai_4.jpg",
    "asset/img/Patusai_5.jpg",
    "asset/img/Patusai_6.jpg",
  ];

  String bg = "asset/img/Patusai_1.jpg";
    List<String> img = [
    "asset/img/ChiangThong_2.jpg",
    "asset/img/WatPhu_2.jpg",
    "asset/img/TadKvangSe_2.jpg",
    "asset/img/ThaLuang_6.jpg",
    "asset/img/Thampukham_6.jpg",
  ];

  List<Widget> location = [
    ChiangThong(),
    WatPhu(),
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
            color: Colors.black.withOpacity(0.3),
            colorBlendMode: BlendMode.colorBurn,
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
                "ປະຕູໄຊ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
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
                                "ປະ​ຕູ​ໄຊ​,ວຽງ​ຈັນ​​ປະຕູໄຊອີກ​ໜຶ່ງ​ສະຖານທີ່ຂອງ​ນະຄອນ​ຫຼວງ​ວຽງ​ຈັນ​ເປັນ​ອະນຸສອນ​ສະຖານ​ເພື່ອ​ລະ​ລຶກ​ເຖິງ​ປະຊາຊົນ​ຊາວ​ລາວ​ຜູ້​ເສຍ​ສະລະ​ຊີວິດ​ໃນ​ສົງຄາມ​ກ່ອນ​ໜ້າ​ການ​ປະຕິວັດ​ຂອງ​ພັກ​ຄອມ​ມິວ​ນິດ​​ບໍລິເວນ​​ອ້ອມ​ຮອບມີບ່ອນຈອດລົດ​ຈັດການ​ສະແດງ​ນ້ຳ​ພຸ",
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
                                  "​ປະກອບ​ດົນຕີ​ແລະສວນ​ປະ​ຕູ​ໄຊ,ອານຸສາວະລີປະຕູໄຊເຊິ່ງບາງຄົນກໍ່ມັກຮຽກສັ້ນໆວ່າປະຕູໄຊຫຼືບາງຄົນກໍ່ວ່າອານຸສາວະລີ.ແຕ່ຈະໃຫ້ຖືກແທ້ໆຕ້ອງເອີ້ນວ່າ:"
                                  "ອານຸສາວະລີປະຕູໄຊ.ສິ່ງກໍ່ສ້າງນີ້ສ້າງເພື່ອເປັນອານຸສອນສະຖານແກ່ໄຊຊະນະຂອງສົງຄາມແລະເປັນສອນປະຕູໄຊມອານຸສາວະລີປະຕູໄຊເຊິ່ງບາງຄົນກໍ່ມັກຮຽກ"
                                  "ສັ້ນໆວ່າປະຕູໄຊຫຼືບາງຄົນກໍ່ວ່າອານຸສາວະລີ.ແຕ່ຈະໃຫ້ຖືກແທ້ໆຕ້ອງເອີ້ນວ່າ:ອານຸສາວະລີປະຕູໄຊ.ສິ່ງກໍ່ສ້າງນີ້ສ້າງເພື່ອເປັນອານຸສອນສະຖານແກ່ໄຊຊະນະຂອງ"
                                  "ສົງຄາມແລະເປັນອານຸສອນແກ່ທະຫານທີ່ຕາຍໃນສົງຄາມໂລກຄັ້ງທີສອງແລະສົງຄາມກັບຈັກກະພັດຝຣັ່ງໃນປີ1949,ປະຕູໄຊເລີ່ມການກໍ່ສ້າງໃນປີ1957ແລະສຳ"
                                  "ເລັດການກໍ່ສ້າງໃນປີ1968ໂດຍນຳໃຊ້ທຶນຈາກອາເມລິກາທີ່ເບື້ອງຕົ້ນຈະເອົາໄປສ້າງເດີ່ນບິນໃນລະຫວ່າງສົງຄາມອິນດູຈີນແຕ່ກໍ່ຖືກນຳມາເຮັດອານຸສາວະລີລວມມູນ"
                                  "ຄ່າການກໍ່ສ້າງປະມານ63ລ້ານກີບໃນຕອນນັ້ນແລະການອອກແບບໂດຍ ທ້າວ ທຳ ໄຊຍະສິດເສນາ."
                                  "ຈາກຮູບແບບການກໍ່ສ້າງແລ້ວ ຮູບຊົງແມ່ນຄ້າຍກັບ Arc de Triomphe ຢູ່ປະເທດຝຣັງ ແລະ ຫຼາຍຄົນກະວ່າແມ່ນ ອ້າຍນ້ອງກັນ, "
                                  "ແມ່ນວ່າຈະມີຮູບຊົງໂຄງສ້າງຄ້າຍກັນ ແຕ່ໃນເລື່ອງລວດລາຍ ແລະ ສະຖາປັດຕະຍະກຳແລ້ວ ປະຕູໄຊ ແມ່ນແຕ້ມແຕ່ງ ດ້ວຍລວດລາຍຂອງລາວ ເຊັ່ນວ່າ:"
                                  " ຮູບຂອງກິນນາລີ, ຮູບກົບກິນເດືອນ ແລະ ອື່ນໆ. ອານຸສາວະລີ ປະຕູໄຊ ແມ່ນຈະມີປະຕູໃຫຍ່ທັງສີ່ດ້ານ ແລະ ປະກອບມີ 7 ຊັ້ນ, ມີຂັ້ນໄດທາງ ຂຶ້ນ ສອງຂ້າງ, "
                                  "ໂດຍທາງດ້ານເທິງ ເປັນອາຄານ 5 ຍອດ ຕາມຫຼັກການປົກຄອງປະເທດເຮົາ ແບບພຸດທະສາສະໜາ ໄດ້ແກ່: ພັນທະມິດ, ການໃຫ້ອະໄພ, ຄວາມສື່ສັດ, ການໃຫ້ກຽດ "
                                  "ແລະ ຄວາມຈະເລີນຮຸ່ງເຮືອງ, ຖ້າຂຶ້ນໄປຮອດຍອດຂອງອາ ນຸສາວະລີ ທ່ານກໍ່ຈະໄດ້ຊື່ມຊົມກັບທິວທັດຄວາມງົດງາມ  ຂອງຕົວເມືອງວຽງຈັນ."
                                  "ປະຕູໄຊຖືກອ້ອມຮອບໄປດ້ວຍສວນສາທາລະນະ ແລະ ຫົນທາງສາຍຫຼັກທີ່ມີລັກສະນະເປັນວົງວຽນ ແລະ ຫົນທາງເສັ້ນໃຫຍ່, ທາງດ້ານໜ້າ "
                                  "ຂອງປະຕູໄຊມີນໍ້າພຸທີ່ສວຍງາມ, ມີສວນສາທາລະນະ ໃຫ້ຜັກຜ່ອນຍ່ອນໃຈ, ເປັນບ່ອນທີ່ຊາວວຽງຈັນ ມັກມາຜັກຜ່ອນ, ສູດອາກາດບໍລິສຸດ ແລະ "
                                  "ອອກກຳລັງກາຍ."
                                  "ຄ່າ​ເຂົ້າ​ຊົມ​: 10,000 ກີບ​ ເວລາ​ເປີດ​-ປິດ​: 8.00 - 17.00 ນ",
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
