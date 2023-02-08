// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';
import '../../Central/Viangchan/Thampukham.dart';
import '../../Central/Vientiane/Patusai.dart';
import '../../Central/Vientiane/ThaLuang.dart';
import '../../North/LuangPrabang/ChiangThong.dart';
import '../../North/LuangPrabang/TadKvangSe.dart';

class KhonPhapheng extends StatefulWidget {
  @override
  State<KhonPhapheng> createState() => _KhonPhaphengState();
}

class _KhonPhaphengState extends State<KhonPhapheng> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/KhonPhapheng_2.jpg",
    "asset/img/KhonPhapheng_3.jpg",
    "asset/img/KhonPhapheng_4.jpg",
    "asset/img/KhonPhapheng_5.jpg",
    "asset/img/KhonPhapheng_6.jpg",
  ];

  String bg = "asset/img/KhonPhapheng_1.jpg";

  List<String> img = [
    "asset/img/ChiangThong_2.jpg",
    "asset/img/Patusai_2.jpg",
    "asset/img/TadKvangSe_1.jpg",
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
                "ນ້ຳຕົກຕາດຄອນພະເພັງ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
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
                                "ນ້ຳຕົກຕາດຟານ ທີ່ຕັ້ງຢູ່:ເສັ້ນທາງເລກທີ13ເສັ້ນທາງໄປປາກຊ່ອງມາເຖີງຫຼັກກິໂລ 38  ນ້ຳ​ຕົກ​ຕາດ​ຟານ"
                                "(ຕາດ ຄື ນ້ຳ​ຕົກຟານ ຄື ຊື່​ຂອງ ສັດ​ປ່າ​ຊະນິດ​ໜຶ່ງ ) ນ້ຳ​ຕົກ​ຕາດ​ຟານ ຫລື ຮຽກອີກ ຊື່​ໜຶ່ງ​ວ່າ"
                                "ນ້ຳ​ຕົກຕາດດົງ​ຫົວ​ສາວ ນ້ຳ​ຕົກ​ຕາດ​ຟານແຫ່ງ​ນີ້​ເປັນນ້ຳ",
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
                                  "​ຕົກຕາດ ທີ່​ສູງ​ທີ່ສຸດຂອງປະເທດ​ລາວຊຶ່ງ​ເປັນນ້ຳ​ຕົກຕາດທີ່​ມີ​ຄວາມ​ສູງ"
                                  "ປະ​ມານ 200 ແມັດ ບັນ​ຍາກ​າດໂດຍ​ຮອບ ຂອບນ້ຳ​ຕົກ​ຕາດ​ຟານ ເປັນ​ສະພາບ​ອາ​ກາດ​ຊຸ່ມ​ຊື່ນ ໜາວ​ເຢັນ​ຕະຫລອດ​ປີ ເປັນ​ເສັ້ນ​ທາງ​ສູ່ ເມືອງ​ປາກ​ຊ່ອງ ເມືອງ​ແຫ່ງ​ຂຸນ​ເຂົາ​ ແລະ ສວນກາ​ເຟ ເປັນພືດ​ເສດຖະກິດ ທີ່​ສົ່ງ​ອອກ​ຂອງ​ປະເທດ ນ້ຳ​ຕົກ​ຕາດ​ຟານເປັນນ້ຳ​ຕົກຕາດທີ່ເກີດ​ຈາກການ​ໄຫລ​ມາ​ລວມ​ກັນ ຂອງ​ສາຍ​ນ້ຳ ຂອງ ພູເຂົາ 2 ໜ່ວຍ ຊຶ່ງ​ໄຫລຕະຫລອດ​ໝົດ​ປີ ອ້ອມຮອບນ້ຳ​ຕົກ​ຕາດ​ຟານ ຈະ​ເຕັມ​ໄປ​ດ້ວຍປ່າ​ໄມ້ ນານາ​ພັນ ອັນ​ສົມບູນ ຂຽວ​ຂະ​ຈີ ອັນ​ສວຍ​ສົດ​ງົດ​ງາມຂອງ​ທຳມະຊາດ ລຳ​ເນົາ​ໄພເປັນ​ສະ​ເໜ່ ປ່າ​ພວກເຂົາທຳມະຊາດຕໍ່ແຂກ​ຜູ້​ມາຢ້ຽມຢາມ ໄດ້​ຊື່ນ​ຊົມ ແລະ ພາຍ​ໃນ​ບໍລິເວນ​ດັ່ງ​ກ່າວ ຍັງມີຕາດ​ຟານ​ຣີ​ສອດ ​ໃກ້​ຊິດ​ຕິດ​ຂອບນ້ຳ​ຕົກ​ຕາດ​ຟານ ລ້ອມ​ຮອບ​ໄວ້​ສຳລັບ​ທ່ານ​ທີ່​ມັກສະຖານ​ທີ່​ພັກ​ຜ່ອນ ແບບ​ຣີ​ສອດທຳມະຊາດລາວ​ໃຕ້ ເມືອງ​ປາກ​ຊ່ອງ ທີ່ຕິດ​ທຳມະຊາດນັ້ນ​ຄືຕາດ​ຟານຣີສອດ. ອີກໜຶ່ງຣີສອດ ທີ່ທ່ານ​ພັກ​ແລ້ວ ຈະ​ບໍ່​ຜິດ​ຫວັງກັບ ຣີ​ສອດທີ່ແວດ​ລ້ອມທຳມະຊາດນ້ຳ​ຕົກປ່າ​ພູເຂົາລຳ​ເນົາ"
                                  "ໃນຍາມເຊົ້າເປັນຈຸດຊົມທະເລໝອກທີ່ສວຍງາມອີກດ້ວຍ  ແຕ່ສຳລັບນັກທ່ອງທ່ຽວທີ່ຕ້ອງການສຳພັດກັບຄວາມຍີງໃຫ່ຍຂອງນ້ຳຕົກແຫ່ງນີ້ ສາມາດເດີນລົງໄປຊົມນ້ຳຕົກບໍລິເວນດ້ານລຸ່ມໃດ້ໄລຍະທາງ ປະມານ 5 ກິໂລ ແມັດຈາກຈຸດຊົມວິວດ້ານເທີງໃຊ້ເວລາເດີນຄ້ອນຂ້າງນານຕ້ອງຕຽມອາຫານ ແລະ ອຸປະກອນກາງເຕັ້ນໄປເອງເພື່ອພັກແຮມ ບໍລິເວນດ້ານລຸ່ມໜຶ່ງຄືນ ແລະ ເດີນກັບໃນເຊົ້າວັນໃໝ່ແນະນຳເຈົ້າໜ້າທີ່ບໍລິເວນນ້ຳຕົກເພຶ່ອສອບຖາມຂໍ່ມູນກ່ຽວກັບເສັ້ນທາງ ແລະ ຕຽມຕົວເພື່ອຄວາມປອດໄພ ສ່ວນນັກທ່ອງທ່ຽວທີ່ຕ້ອງການຄວາມສະດວກສະບາຍສາມາດລົດເລືອກໃຊ້ບໍລິການທີ່ພັກຕ່າງໆ"
                                  "ແຕ່ໄຮໄລຂອງບ່ອນນີ້ແມ່ນ ກິດຈະກຳແນວພະຈົນໄພ ທັງການໂຫນຊິບລາຍຂ້າມນ້ຳຕົກ ແລະ ການປີນໜ້າຜາບໍລິເວນນ້ຳຕົກ ທັງນີ້ການໂຫນຊິບລາຍໄດ້ຮັບຄວາມນິຍົມຈາກນັກທ່ອງທ່ຽວຂ້ອນຂ້າງຫຼາຍ ເພາະເປັນຊິບລາຍທີ່ມີຄວາມສູງປະມານ 220 ແມັດ ແລະ ຍັງມີໃຫ້ເລືອກວ່າຈະໂຫນໄປດ້ວຍມືທຳມະດາ ຫຼື ຈະນັ່ງຈິບກາເຟ ຮັບປະກັນຄວາມຫວາດສຽວ"
                                  "ພາຍໃນແຫຼ່ງທ່ອງທ່ຽວນໍ້າຕົກຕາດຟານແມ່ນມີການສ້າງກິດຈະກໍາຫຼາຍຢ່າງ ທີ່ມີຄວາມຕື່ນເຕັ້ນ,ທ້າທາຍແລະແປກໃໝ່ເຊັ່ນ"
                                  "- ການຍ່າງປ່າ: ແມ່ນເພື່ອທ່ຽວຊົມທໍາມະຊາດ,ສັດປ່ານາໆຊະນິດ ແລະ ເພື່ອສໍາຜັດກັບນໍ້າຕົກຕາດແບບໃກ້ຊິດເຊິ່ງປະກອບມີ 2 ແບບຄື: ການຍ່າງປ່າເພື່ອໄປສໍາຜັດກັບຈຸດເທິງສຸດຂອງນໍ້າຕົກຕາດ ແລະ ການຍ່າງປ່າເພື່ອໄປສໍາຜັດແບບໃກ້ຊິດກັບຈຸດທີ່ນໍ້າຕົກລົງເຊິ່ງທັງສອງແບບນີ້ ແມ່ນໃຊ້ເວລາໃນການຍ່າງປະມານເຄິ່ງມື້ເພາະຕ້ອງໄດ້ຍ່າງອ້ອມເພື່ອຄວາມປອດໄພ ຂອງນັກທ່ອງທ່ຽວສະນັ້ນຕ້ອງໄດ້ກຽມອາຫານ,ນໍ້າດື່ມແລະອຸປະກອນສໍາລັບນອນໄປເອງ ເພື່ອພັກແຮມ 1 ຄືນຫຼັງຈາກນັ້ນກໍ່ເດີນທາງກັບໃນເຊົ້າມື້ຕໍ່ມາແຕ່ວ່າກ່ອນຈະເດີນທາງ ແມ່ນມີພະນັກງານໃຫ້ຂໍ້ມູນແລະກົດລະບຽບໄປສຶກສາຢ່າງລະອຽດ ເຊິ່ງຄ່າສໍາລັບການຍ່າງປ່າແມ່ນ20ຫຼຽນ/ຄົນ."
                                  "- ການຂີ່ສະລິງພ້ອມດື່ມກາເຟແມ່ນໄດ້ເລີ່ມຈັດກິດຈະກໍານີ້ໃນເດືອນມີຖຸນີປິ 2016 ເປັນຕົ້ນມາໂດຍໃຫ້ບໍລິການດື່ມນ້ຳຊາຫຼືກາເຟແບບຫວາດສຽວທາມກາງສາຍສະລິງ ມີທັງໂຕະກາເຟຢູ່ທາມກາງທຳມະຊາດແລະ ບັນຍາກາດຄວາມສວຍງາມ ຂອງນ້ຳຕົກຕາດຟານເຊິ່ງເຮັດໃຫ້ນັກທ່ອງທ່ຽວໄດ້ສຳຜັດກັບຄວາມຕື່ນເຕັ້ນ, ຄວາມຫວາດສຽວແລະທ້າທາຍໃນສິ່ງແປກໃຫມ່ຢູ່ເທິງຈຸດສູງທີ່ສຸດເໜືອນໍ້າຕົກຕາດຟານ ເຊິ່ງແຫຼ່ງທ່ອງທ່ຽວນີ້ເປັນແຫຼ່ງທ່ອງທ່ຽວດຽວໃນລາວທີ່ມີການຈັດກິດຈະກໍາແບບນີ້.ໃນນີ້ ສາຍສະລິງມີທັງໝໝົດ4ເສັ້ນທີ່ມີຄວາມຍາວລວມປະມານ2ກິໂລແມັດເຊິ່ງຂີ່ປະມານ 30 ນາທີແລະຄ່າບໍລິການສໍາລັບຂີ່ສະລິງແມ່ນ 40ຫຼຽນ/ຄົນ ແລະ ຄ່າກາເຟແມ່ນ40/ຈອກ."
                                  "- ໃນແຕ່ລະປີເມື່ອຮອດເດືອນ 3 ໃນບ້ານດັ່ງກ່າວເຄີຍຈັດບຸນສະຫຼອງຫຼື ບຸນນະມັດສະການປະຈຳປີຂຶ້ນເພື່ອບວງສວງສິ່ງສັກສິດໃນບໍ່ລິເວນຕາດຟານ (ຕາມຄວາມເຊື່ອຂອງປະຊາຊົນ)",
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
