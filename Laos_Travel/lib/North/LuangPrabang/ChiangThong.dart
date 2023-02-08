// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:my_app/Central/Viangchan/Thampukham.dart';
import 'package:my_app/Central/Vientiane/Patusai.dart';
import 'package:my_app/Central/Vientiane/ThaLuang.dart';
import 'package:my_app/North/LuangPrabang/TadKvangSe.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';

class ChiangThong extends StatefulWidget {
  @override
  State<ChiangThong> createState() => _ChiangThongState();
}

class _ChiangThongState extends State<ChiangThong> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/ChiangThong_2.jpg",
    "asset/img/ChiangThong_3.jpg",
    "asset/img/ChiangThong_4.jpg",
    "asset/img/ChiangThong_5.jpg",
    "asset/img/ChiangThong_6.jpg",
  ];

  String bg = "asset/img/ChiangThong_1.jpg";
  List<String> img = [
    "asset/img/WatPhu_2.jpg",
    "asset/img/Patusai_2.jpg",
    "asset/img/TadKvangSe_2.jpg",
    "asset/img/ThaLuang_6.jpg",
    "asset/img/Thampukham_6.jpg",
  ];

  List<Widget> location = [
    WatPhu(),
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
                "ວັດຊຽງທອງ",
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
                                "ວັດຊຽງທອງສ້າງຕັ້ງຂຶ້ນໃນ ປີ ຄສ 1560, ສ້າງໂດຍ ພຣະເຈົ້າໄຊຍະເສດຖາທິລາດ. ຕັ້ງຢູ່ໃກ້ແຄມແມ່ນ້ຳຂອງ ເປັນສະຖາປັດຕະຍະກຳລັານຊ້າງທີ່ສວຍສົດງົດງາມແຫ່ງໜຶ່ງໃນຫລວງພະບາງ." +
                                    "ວັດ​ຊຽງ​ທອງ​,ຫຼວງ​ພະ​ບາງ​ວັດ​ຊຽງ​ທອງ​ສະຖານ​ທີ່​ທ່ອງ​ທ່ຽວ​ທີ່​ຕ້ອງ​ມາ​",
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
                                  "​ຢ້ຽມຢາມເມືອ​ມາ​ເຖິງ​ຫຼວງ​ພະ​ບາງ​ເປັນ​ວັດ​ທີ່​ສຳຄັນ​ແລະ​ສວຍ​ງາມ​ທີ່ສຸດ​ຂອງ​ເມືອງ​ນ້ອຍ​ໆ​ ແຫ່ງ​ນີ້" +
                                      "ວັດ​ຊຽງ​ທອງ​ເປັນ​ວັດ​ເກົ່າ​ແກ່​ຄູ່​ບ້ານ​ຄູ່​ເມືອງ​ຫຼວງ​ພະ​ບາງ​ມາ​ຫຼາຍຮ້ອຍປີ, ພາຍ​ໃນ​ອຸ​ໂບດ​ຖະ​ວິ​ຫານ​ແລະ​ອາ​ຄານ​ຕ່າງ​ໆ​ບໍລິເວນ​ວັດ​ ຈະ​ຕົກ​ແຕ່ງ​ຢ່າງ​ສວຍ​ງາມ​ຫຼາຍ​ດ້ວຍ​ລວດ​ລາຍ​ແກະ​ສ​ະລັກ​ຕ່າງ​ໆ​ ຖື​ເປັນ​ໜຶ່ງ​ໃນ​ສຸດ​ຍອດ​ສ​ະຖາ​ປັດ​ຍະ​ກຳ​ລາວ​ລ້ານ​ຊ້າງ" +
                                      "“ວັດຊຽງທອງ” ຊຶ່ງເປັນວັດທີ່ສຳຄັນ ແລະ ມີຄວາມງົດງາມທີ່ສຸດແຫ່ງນີ້ ຈົນໄດ້ຮັບການຍົກຍ້ອງຈາກນັກບູຮານຄະດີ ວ່າເປັນດັ່ງອັນ ຍະມະນີແຫ່ງສະຖາປັດຕະຍະກຳລາວ ວັດຊຽງທອງຖືກສ້າງຂຶ້ນໃນລາຊະສະໄໝພຣະເຈົ້າໄຊເສດຖາທິລາດ ຫລັງຈາກສ້າງວັດນີ້ບໍ່ດົນພະ ອົງກໍຊົງຍ້າຍເມືອງຫລວງໄປຍັງນະຄອນວຽງຈັນ ແລະ ວັດນີ້ຍັງໄດ້ຮັບການອຸບປະຖຳເບິ່ງແຍງ ຈາກເຈົ້າມະຫາຊີວິດສີສະຫວ່າງວົງ ແລະ ເຈົ້າມະຫາຊີວິດສີສະຫວ່າງວັດທະນາ ເຈົ້າມະຫາຊີວິດ ສອງພະອົງສຸດທ້າຍຂອງລາວ" +
                                      "ເມື່ອເດິນທາງມາເຖິງວັດນີ້ສິ່ງທຳອິດ ກໍຄືການໄປ ຊົມພຣະອຸໂປສົດ ຫລື ທີ່ເອີ້ນວ່າ “ສິມ” ແມ່ນຂະໜາດຈະບໍ່ໃຫຍ່ ແຕ່ກໍສະແດງເຖິງສະຖາປັດຕະຍະກຳທາງສາດສະຫນາ ແບບຫລວງ ພະບາງແທ້ໆດ້ວຍຫລັງຄາພະອຸໂປສົດ ທີ່ແອ່ນໂຄ້ງຊ້ອນກັນຢູ່ 3 ຊັ້ນ" +
                                      "ຫຼຸດລື່ນເກືອບຮອດຖານຈົນເບິ່ງຄ່ອນຂ້າງເຕີ້ຍສ່ວນກາງຂອງ ຫລັງຄາມີເຄື່ອງຍອດສີທອງຊຶ່ງຊາວລາວຈະຮຽກວ່າ “ຊໍ່ຟ້າ ” ປະກອບດ້ວຍ 17 ຊໍ່ ອັນມີຄວາມຫມາຍວ່າເປັນ “ສິມ” (ອຸໂປສົດ) ທີ່ເຈົ້າມະ ຫາຊີວິດຊົງສ້າງຂຶ້ນ ສ່ວນ “ສິມ” (ອຸໂປສົດ) ທີ່ເຈົ້າມະຫາຊີວິດຊົງສ້າງຂຶ້ນ ສ່ວນ “ສິມ” ທີ່ຄົນສາມັນສ້າງຈະມີຊໍ່ຟ້າພຽງ1-7 ຊໍ່ເທົ່ານັ້ນ ເຊື່ອກັນວ່າບໍລິເວນປ່ອງສີ່ຫລ່ຽມນ້ອຍໆ ເຄິ່ງກາງຂອງຊໍ່ຟ້າເຄີຍໃຊ້ເປັນທີ່ເກັບຂອງມີຄ່າ ປະຈຸບັນເຫລືອພຽງປ່ອງວ່າງເປົ່າ ຖັດມາ ທີ່ສ່ວນຂອງໜ້າບັນມີ “ໂຫງ່" +
                                      "ຮູບຮ່າງຄ້າຍຫົວນາກເປັນສ່ວນປະດັບຕາມຄະຕິທຳທາງພຸດທະສາດສະຫນາ ເມື່ອຍ່າງເຂົ້າ ຕໍ່ມາທີ່ປະຕູ ພະອຸໂປສົດ ຈະສະດຸດຕາກັບລວດລາຍແກະສະຫລັກອັນສວຍງາມ ເຊັ່ນດຽວກັບທີ່ປ່ອງຢ້ຽມ ຝາພາຍໃນກໍສວຍງາມດ້ວຍ ລວດລາຍ ປິດທອງສະຫລຸເທິງພື້ນສີດຳ ເລົ່າເລື່ອງພຸດທະປະຫວັດ, ທ້າວສີທົນ,ພະເຈົ້າ10ຊາດ ແລະ ພາບນິທານເພື່ອນບ້ານ ເລິກເຂົ້າໄປຄືພະປະ ທານຊຶ່ງມີຊື່ວ່າ “ພະອົງຫລວງ”" +
                                      "ນອກຈາກວັດຊຽງທອງຈະມີພະອຸໂປສົດທີ່ໂດດເດັ່ນດ້ວຍສະຖາປັດຕະຍະກຳແບບລ້ານຊ້າງແລ້ວ ການ ຕົບແຕ່ງລວດລາຍຕາມຝາພາຍໃນກໍສວຍງາມຄືກັນ ບໍລິເວນຝາດ້ານຫລັງຂອງພະອຸໂປສົດກໍມີການຕົບແຕ່ງດ້ວຍການເອົາ ແກ້ວສີ ມາຕັດຕໍ່ກັນເປັນຮູບຕົ້ນໂພຂະໜາດໃຫຍ່ ດ້ານຂ້າງກໍຕິດເປັນຮູບສັດໃນ" +
                                      " ຄ່າ​ເຂົ້າ​ຊົມ​: 20,000 ກີບ​ ເວລາ​ເປີດ​-ປິດ​: 6.00 - 17.30 ນ",
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
