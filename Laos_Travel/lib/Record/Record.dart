// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_app/Central/Viangchan/Thampukham.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/Record/ListRecord.dart';
import 'package:my_app/UserPost.dart';

class Record extends StatefulWidget {
  const Record({super.key});

  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00abb3),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00abb3),
        centerTitle: true,
        title: const Text(
          "ທີບັນທຶກໄວ້",
          style: TextStyle(fontSize: 25),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                // margin: const EdgeInsets.only(top: 20.0),
                decoration: const BoxDecoration(
                    color: Color(0xFFf6f6f6),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      ListRecord(
                          "asset/img/Thampukham_1.jpg",
                          "ຖ້ຳປູຄຳ",
                          "ຖ້ຳປູຄຳຕັ້ງຢູ່ ບ້ານນາທອງ , ເມຶອງວັງວຽງ , ແຂວງວຽງຈັນ ເຊິ່ງຫ່າງຈາກເທດສະບານເມືອງວັງວຽງ 3,5 ກິໂລແມັດປະຫວັດຄວາມເປັນມາ...",
                          Thampukham()),
                      ListRecord(
                          "asset/img/S21.JPG",
                          "ວັດພູຈຳປາສັກ",
                          "ວັດພູຈຳປາສັກ ມໍລະດົກໂລກ ຂອງລາວຈາກອົງການ UNESCO"
                              "ວັດ​ພູ​ໄດ້​ຂຶ້ນ​ທະ​ບຽນ​ເປັນ​ມໍລະດົກ​ໂລກ​ແຫ່ງ​ທີ່​ສອງ​ຂອງ​ປະເທດ​ລາວ​​ຫີນ​ເກົ່າ​ແກ່​ແຫ່ງ​ນີ້​ເປັນ​ບູຮານ​ສະຖານ​ທີ່​ຕັ້ງ​ເດັ່ນ...",
                          WatPhu()),
                      ListRecord(
                          "asset/img/ThaLuang_1.jpg",
                          "ພະທາດຫຼວງວຽງຈັນ",
                          "ພະ​ທາດ​ຫຼວງ​ຕັ້ງ​ຢູ່​ທາງ​ທິດ​ຕະເວັນ​ອອກ​ສຽງ​ເໜືອ​ຂອງ​ປະ​ຕູໄ​ຊ​ຫາກ​ໄປ​ທ່ຽວ​ວຽງ​ຈັນ​ຕ້ອງ​ບໍ່​ພາດ​ໄປ​ຢ້ຽມ​ຊົມ​ພະທາດຫຼວງ ​ອີກ​ຊື່​ວ່າ​ ພະ​ເຈ​ດີ​ໂລ​ກະ​ຈຸ​ລາມ​ນີ​ ປູຊະນີຍະສະຖານ​ອັນສຳຄັນອາຍຸນັບພັນປີ...",
                          Thampukham()),
                      ListRecord(
                          "asset/img/ChiangThong_1.jpg",
                          "ວັດຊຽງທອງ",
                          "ວັດຊຽງທອງສ້າງຕັ້ງຂຶ້ນໃນ ປີ ຄສ 1560, ສ້າງໂດຍ ພຣະເຈົ້າໄຊຍະເສດຖາທິລາດ. ຕັ້ງຢູ່ໃກ້ແຄມແມ່ນ້ຳຂອງ ເປັນສະຖາປັດຕະຍະກຳລັານຊ້າງທີ່ສວຍສົດງົດງາມແຫ່ງໜຶ່ງໃນຫລວງພະບາງ...",
                          Thampukham()),
                    ],
                  ),
                ),
              )
            ],
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
