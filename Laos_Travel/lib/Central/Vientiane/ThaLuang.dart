import 'package:flutter/material.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/UserPost.dart';

import '../../North/LuangPrabang/ChiangThong.dart';
import '../../North/LuangPrabang/TadKvangSe.dart';
import '../Viangchan/Thampukham.dart';
import 'Patusai.dart';

class ThaLuang extends StatefulWidget {
  @override
  State<ThaLuang> createState() => _ThaLuangState();
}

class _ThaLuangState extends State<ThaLuang> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/ThaLuang_2.jpg",
    "asset/img/ThaLuang_3.jpg",
    "asset/img/ThaLuang_4.jpg",
    "asset/img/ThaLuang_5.jpg",
    "asset/img/ThaLuang_6.jpg",
  ];

  String bg = "asset/img/ThaLuang_1.jpg";
  List<String> img = [
    "asset/img/ChiangThong_2.jpg",
    "asset/img/Patusai_2.jpg",
    "asset/img/TadKvangSe_2.jpg",
    "asset/img/WatPhu_2.jpg",
    "asset/img/Thampukham_6.jpg",
  ];

  List<Widget> location = [
    ChiangThong(),
    Patusai(),
    TadKvangSe(),
    WatPhu(),
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
            color: Colors.black.withOpacity(0.2),
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
                "ພະທາດຫຼວງວຽງຈັນ",
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
                                "ພະ​ທາດ​ຫຼວງ​ຕັ້ງ​ຢູ່​ທາງ​ທິດ​ຕະເວັນ​ອອກ​ສຽງ​ເໜືອ​ຂອງ​ປະ​ຕູໄ​ຊ​ຫາກ​ໄປ​ທ່ຽວ​ວຽງ​ຈັນ​ຕ້ອງ​ບໍ່​ພາດ​ໄປ​ຢ້ຽມ​ຊົມ​ພະທາດຫຼວງ​ອີກ​ຊື່​ວ່າ​ ພະ​ເຈ​ດີ​ໂລ​ກະ​ຈຸ​ລາມ​ນີ​ ປູຊະນີຍະສະຖານ​ອັນ​ສຳຄັນ​ອາ​ຍຸ​ນັບ​ພັນ​ປີ​ທີ່​ມີ​ຄຸນຄ່າ​ທາງ​ປະຫວັດສາດ​ສີລະປະ ​ແລະ ​ວັດທະນະທຳ​ຂອງ​ລາວ",
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
                                  "ພະທາດຫລວງ(PraThatluang)ຫລືພຣະທາດຫລວງວຽງຈັນຕັ້ງຢູ່ສົ້ນສຸດທາງທິດຕາເວັນອອກຂອງຖະໜົນທາດຫຼວງ,ບ້ານທາດຫຼວງ,ເມືອງໄຊເສດຖາ,ນະຄອນຫຼວງວຽງຈັນ.ເປັນປູຊະນິຍະສະຖານບູຮານອັນເປັນສັນຍະລັກຂອງປະເທດລາວ ແລະ ເປັນມິ່ງຂວັນຂອງປະຊາຊົນລາວກໍຄືຊາວພຸດທົ່ວທັງປະເທດ.ຕາມຕຳນານອຸລັງຄະທາດ,ພຣະທາດຫຼວງຖືກສ້າງຂຶ້ນເທື່ອທີໜຶ່ງໃນປີພ.ສ236(ກ່ອນຄ.ສ307ປີ)ສະໄໝສ້າງເມືອງວຽງຈັນ,ໂດຍພຣະເຈົ້າຈັນທະບຸຣີປະສິດທິຈັກພ້ອມດ້ວຍພຣະອໍຣະຫັນຫ້າອົງ(ພຣະສົງລາວ)ທີ່ກັບມາຈາກການສຶກສາທຳມະແລະໄດ້ນຳເອົາພຣະບໍຣົມມະທາດ(ກະດູກ)ຂອງພຣະພຸດທະເຈົ້າມາຈາກປະເທດອິນເດຍ.ການສ້າງພຣະທາດຫຼວງເທື່ອທຳອິດນັ້ນພຽງແຕ່ກໍ່ເປັນອຸມຸງຫິນກວມ ພຣະບໍຣົມມະທາດເທົ່ານັ້ນ ແລະ ມີຮູບສີ່ລ່ຽມ, ກວ້າງດ້ານລະຫ້າວາ, ໜາສອງວາ ແລະ ສູງສີ່ວາສາມສອກ.ປີ ຄ.ສ 1566 ພາຍຫຼັງການຍ້າຍ ນະຄອນຫຼວງຈາກ ຫຼວງພຣະບາງ ລົງມາຕັ້ງຢູ່ວຽງຈັນ(ຄ.ສ 1560) ພະເຈົ້າໄຊຍະເສດຖາທິລາດ ໄດ້ກໍ່ສ້າງພະທາດ ຫຼວງເປັນເທື່ອທີສອງ ແລະ ໄດ້ສ້າງ ເປັນທາດໃຫຍ່ ກວມອຸມຸງຫິນອັນເກົ່າ ເຊິ່ງມີພະທາດນ້ອຍ ສາມສິບອົງ ອ້ອມພະທາດໃຫຍ່, ເປັນບໍລິວານ ພ້ອມດ້ວຍກົມມະລຽນ ແລະ ຫໍໄຫວ້ທັງສີ່ທິດ. ໃນທາດນ້ອຍແຕ່ລະອົງນັ້ນ ເພິ່ນ ໄດ້ເອົາຄຳໜັກສີ່ບາດ ຫຼໍ່ເປັນທາດນ້ອຍໆ ບັນຈຸໄວ້ເຊິ່ງມີໃບລານທີ່ ເຮັດດ້ວຍຄຳຍາວສອກປາຍ (ສອກກຳ) ແລະ ຈາລຶກພາສາບາລີ  ດ້ວຍອັກສອນທຳຮອງໄວ້ທຸກອົງ. ເມື່ອກໍ່ສ້າງສຳເລັດ ເພິ່ນໄດ້ໃສ່ຊື່ພະທາດວ່າ ”ພະເຈດີໂລກະຈຸລາມະນີ” ແຕ່ຄົນສ່ວນຫຼາຍມັກເອິ້ນວ່າ “ທາດຫຼວງ” ເຊິ່ງມີຄວາມໝາຍວ່າ ທາດທີ່ໃຫຍ່. ພາຍຫຼັງສ້າງສຳເລັດລົງໃນປີ ຄ.ສ 1570 ຍັງບໍ່ທັນໄດ້ສະຫຼອງ, ພະເຈົ້າໄຊຍະເສດຖາທິລາດ ໄດ້ເດິນທາງລົງໄປເມືອງອັດຕະປື ແລ້ວຫາຍສາບສູນໄປໃນປີ ຄ.ສ 1571.ພະທາດຫຼວງສູງ 45 ແມັດ, ມີໃບສີມາອ້ອມ 228 ໃບ, ມີບໍລິວານ (ທາດນ້ອຍ) 30 ອົງອ້ອມຮອບ ເອິ້ນວ່າ: “ປາລະມີສາມສິບທັດ”, ຕີນພະທາດ ແຕ່ດ້ານຕາເວັນອອກຫາດ້ານຕາເວັນຕົກຍາວ 69 ແມັດ, ແຕ່ດ້ານເໜືອເຖິງດ້ານໃຕ້ຍາວ 68 ແມັດ ແລະ ກົມມະລຽນດ້ານນອກອ້ອມພະທາດຫຼວງ ແຕ່ລະດ້ານຍາວ 91.75 ແມັດຄ່າ​ເຂົ້າ​ຊົມ​: 5,000 ກີບ​ເວລາ​ເປີດ​-ປິດ​: 8.00 - 17.00 ນ.",
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
