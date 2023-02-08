// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:my_app/Central/Viangchan/Thampukham.dart';
import 'package:my_app/Central/Vientiane/Patusai.dart';
import 'package:my_app/Central/Vientiane/ThaLuang.dart';
import 'package:my_app/South/Champasuk/KhonPhapheng.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';
import 'ChiangThong.dart';

class TadKvangSe extends StatefulWidget {
  @override
  State<TadKvangSe> createState() => _TadKvangSeState();
}

class _TadKvangSeState extends State<TadKvangSe> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/TadKvangSe_2.jpg",
    "asset/img/TadKvangSe_3.jpg",
    "asset/img/TadKvangSe_4.jpg",
    "asset/img/TadKvangSe_5.jpg",
    "asset/img/TadKvangSe_6.png",
  ];

  String bg = "asset/img/TadKvangSe_1.jpg";

  List<String> img = [
    "asset/img/ChiangThong_2.jpg",
    "asset/img/Patusai_2.jpg",
    "asset/img/WatPhu_2.jpg",
    "asset/img/ThaLuang_6.jpg",
    "asset/img/Thampukham_6.jpg",
  ];

  List<Widget> location = [
    ChiangThong(),
    Patusai(),
    WatPhu(),
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
                "ນ້ຳຕົກຕາດກວ້າງສີ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
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
                                "ນໍ້າຕົກຕາດກວາງຊີ ຕັ້ງຢູ່ເຂດບ້ານທ່າແປ້ນຫ່າງຈາກຕົວເມືອງປະມານ 25 ກິໂລແມັດ. ຕາດນີ້ເປັນນໍ້າຕົກຕາດຫີນປູນເຊິ່ງມີຄວາມສູງປະມານ 80 ແມັດຫຼຸດລົງມາເປັນຊັ້ນໆ ໂດຍນ້ຳ​ຕົກ​ແລະ​ແອ່ງ​ນ້ຳ​ສີ​ຂຽວ​ມໍລະ​ກົດ​ຖືກ​​ປ່າໄມ້ທີ່ອຸດົມສົມບູນອ້ອມຮອບ.",
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
                                  // ignore: prefer_adjacent_string_concatenation
                                  "​ຄວາມສວຍສົດງົດງາມຂອງນໍ້າຕົກຕາດທີ່ມີສີຂຽວມໍລະກົດ"
                                  "ບວກກັບປ່າໄມ້ຂຽວອຸ່ມທຸ່ມໄດ້ສ້າງຄວາມປະທັບໃຈໃຫ້ແກ່ຜູ້ທີ່ມາຢ້ຽມຢາມນໍ້າຕົກຕາດແຫ່ງແຫ່ງນີ້. ແຫ່ງ​ນີ້​ເປັນ​ອີກ​ໜຶ່ງ​ສະຖານ​ທີ່​ທ່ອງ​ທ່ຽວ​ທາງ​ທຳມະຊາດ​ຢອດ​ນິຍົມ​ຂອງ​ຫຼວງ​ພະ​ບາງ​ ເຊິ່ງໃຊ້​ເວລາ​ເດິນທາງ​ເຂົ້າ​ສູ່ນ້ຳ​ຕົກ​ຕາດ​ກວາງ​ຊີ​ປະມານ​"
                                  "45 ນາ​ທີ​ບ່ອນນີ້​ມີ​ກິດຈະກຳ​ໃຫ້​ເຮັດ​ຫຼາຍ​ຢ່າງ​ ໃຜ​ຢາກ​ລົງ​ຫລິ້ນ​ນ້ຳ​ກໍ​ມີ​ຫ້ອງ​ປ່ຽນ​ເສື້ອ​ຜ້າ​ໃຫ້​ບໍລິການ​ບໍລິເວນ​ດ້ານ​ລຸມ​ນ້ຳ​ຕົກ​ມີ​ຂົວ​ແລະ​ເສັ້ນ​ທາງເດີນ​ຊົມ​ວິວ​ອີກ​ດ້ວຍຢູ່ຕາມທາງຍ່າງເຂົ້າໄປເບື້ອງຂວາກ່ອນຈະຮອດຕົວຕາດ"
                                  " ຈະໄດ້ພົບກັບວັງນໍ້າສີຂຽວງາມຫຼາຍວັງ ແລະ ມີບາງວັງທີ່ສາມາດລົງຫຼິ້ນໄດ້ ເຊິ່ງຈະສ້າງຄວາມຮູ້ສຶກສົດຊື່ນເຢັນສະບາຍ ແລະ ສໍາຜັດໄດ້ເຖິງທໍາມະຊາດແທ້ໆ."
                                  "ນອກຈາກນັ້ນແລ້ວ ຖ້າທ່ານໃດມັກຮັກການປະຈົນໄພ ແລະ ຄວາມແປກໃໝ່, ທ່ານສາມາດເດີນທາງມາຕາດກວາງຊີໄດ້ ໂດຍການຍ່າງປ່າຕາມເສັ້ນທາງຍ່າງ ເລີ່ມຈາກເຂດບ້ານລ້ອງເລົາໄປຫາບໍລິເວນນໍ້າຕົກຕາດກວາງຊີ ໂດຍໃຊ້ເວລາປະມານ 3-4 ຊົ່ວໂມງ."
                                  " ການຍ່າງປ່າດັ່ງກ່າວເປັນກິດຈະກໍາໜຶ່ງຂອງການທ່ອງທ່ຽວແບບອະນຸຮັກ ປະຊາຊົນມີສ່ວນຮ່ວມເຊິ່ງທ່ານຈະໄດ້ເຫັນວິຖີຊີວິດຂອງ ຊົນເຜົ່າມົ້ງ ພ້ອມທັງຄວາມງົດງາມຂອງທໍາມະຊາດຕາມເສັ້ນທາງກ່ອນຈະຮອດຕາດກວາງຊີອີກດ້ວຍ. "
                                  "ຄ່າ​ເຂົ້າ​ຊົມ​: 20,000 ກີບ​ ເວລາ​ເປີດ​-ປິດ​: 6.00 - 17.30 ນ.",
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
