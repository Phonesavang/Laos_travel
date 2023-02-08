// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:my_app/Central/Viangchan/Thampukham.dart';
import 'package:my_app/Central/Vientiane/Patusai.dart';
import 'package:my_app/Central/Vientiane/ThaLuang.dart';
import 'package:my_app/North/LuangPrabang/TadKvangSe.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';

class Haihin extends StatefulWidget {
  @override
  State<Haihin> createState() => _HaihinState();
}

class _HaihinState extends State<Haihin> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/Haihin_2.png",
    "asset/img/Haihin_3.png",
    "asset/img/Haihin_4.jpg",
    "asset/img/Haihin_5.jpg",
    "asset/img/Haihin_6.png",
  ];

  String bg = "asset/img/Haihin_1.jpg";

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
                "ທົ່ງໄຫຫີນ",
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
                                "ທົ່ງໄຫຫີນ ເປັນແຫລ່ງທ່ອງທ່ຽວທີ່ສຳຄັນຂອງ ຊຽງຂວາງ ຊາວບ້ານໄປພົບເຂົ້າລະຫວ່າງໄປຫາເຄື່ອງປ່າ ແລະ ລ່າສັດ."
                                " ຊຶ່ງມີຮູບຊົງຄ້າຍໄຫເຮັດດ້ວຍຫີນຊາຍນີ້ມີຂະໜາດນ້ອຍຈົນເຖິງຂະໜາດໃຫຍ່ ມີຂະໜາດເສັ້ນຜ່າສູນກາງ"
                                " ແລະ ຄວາມສູງໂດຍ",
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
                                  "ສະເລ່ຍ 1.5 ແມັດ ນ້ຳໜັກຫລາຍທີ່ສຸດເຖິງ 15 ໂຕນ ແລະ ໜ່ວຍທີ່ນ້ອຍທີ່ສຸດໜັກປະມານ 40-50 ກິໂລກຣາມ"
                                  " ກະຈັດກະຈາຍ ຢູ່ໃນບໍລິເວນ ເຂດເມືອງໂພນສະຫວັນ ແລະ ຍັງມີບ່ອນອື່ນໆອີກ. ໃນແຂວງຊຽງຂວາງ ອີກຫລາຍແຫ່ງນຳກັນ"
                                  " ໄຫຫີນສ່ວນຫຼາຍສະກັດ ມາຈາກຫິນຊາຍ ທີ່ຫາງ່າຍໃນທ້ອງຖິ່ນ ແຕ່ມີຢູ່ຫລາຍໜ່ວຍ ທີ່ມີຮ່ອງຮອຍການເກືອກລາກມາຈາກບ່ອນອື່ນ"
                                  " ບາງໄຫ ມີລັກສະນະ ແກະສະຫຼັກຍັງບໍ່ສຳເລັດກໍມີ ນອກຈາກນີ້ຍັງຄົ້ນພົບໂຄງກະດູກມະນຸດໃນໄຫບາງໜ່ວຍ"
                                  "ຊຶ່ງເປັນເຄື່ອງຢືນຢັນການໃຊ້ຫີນໃນພິທີຝັງສົບໄດ້ຢ່າງດີສ່ວນແຜ່ນຫີນມົນໆ ຄ້າຍຝາປິດຊຶ່ງພົບຢູ່ໃກ້ໆ "
                                  "ກັບໄຫຫີນນັ້ນໜ້າຈະເປັນແຜ່ນຫີນທີ່ໃຊ້ປິດໄຫຫີນໃນຂະນະປະກອບພິທີ. ອ້ອມຮອບໄຫຫີນພົບລູກປັດຈາກຈີນ "
                                  "ເຄື່ອງປະດັບຂອງຊົນເຜົ່າໄທ ແລະ ຮູບສຳລິດຂອງວຽດນາມ ຈຶ່ງພໍຈະຄາດເດົາໄດ້ວ່າ ຊົນເຜົ່າ ທີ່ສ້າງໄຫຫີນຂຶ້ນມານີ້ "
                                  "ຈະຕ້ອງມີຄວາມຈະເລີນ ແລະ ອາລິຍະທຳສູງ ແລະ ມີການຕິດຕໍ່ຄ້າຂາຍໄປທົ່ວພູມີພາກແຖວນີ້ດ້ວຍ ນັກບູຮານຄະດີລຸ້ນຫລັງໆ "
                                  "ລົງຄວາມເຫັນວ່າ ເຈົ້າຂອງອາລິຍະທຳນີ້ ອາດຈະເປັນຝີມືຂອງພວກຈາມໃນຫວຽດນາມ ທີ່ຫລົ່ມສະຫລາຍໄປແລ້ວ ຫລື "
                                  "ເປັນຝີມືຂອງຊາວລາວເທີງ ທີ່ອາໄສຢູ່ໃນແຂວງອັດຕະປື ທາງທິດຕະເວັນອອກສຽງໃຕ້ ຂອງປະເທດລາວ ຕິດກັບຊາຍແດນປະເທດກຳປູເຈຍ "
                                  "ສຳລັບທົ່ງໄຫຫີນນີ້ ຖະໜົນເຂົ້າເຖິງສະດວກ ໃນເຂດໂພນສະຫວັນ ແຂວງຊຽງຂວາງ ຊຶ່ງທາງລັດຖະບານ ໄດ້ເກັບກູ້ລະເບີດອອກໝົດແລ້ວ"
                                  " ທຸ່ງໄຫຫີນ ມີຢູ່ສາມກຸ່ມນຳກັນຄື: ກຸ່ມທີ່ 1 ຕັ້ງຢູ່ຫ່າງຈາກຕົວເມືອງໂພນສະຫວັນ ທາງທິດຕະເວັນອອກສຽງໃຕ້ ໄປທາງເມືອງຄູນ "
                                  "ເມືອງຫລວງເກົ່າ ໄລຍະທາງປະມານ 7.5 ກິໂລແມັດ ມີໄຫຫີນກະຈັດກະຈາຍ ຢູ່ໃນທົ່ງຫຍ້າປະມານ 200 ໜ່ວຍ ແລະ "
                                  "ມີຂະໜາດໃຫຍ່ກວ່າໃນກຸ່ມອື່ນໆ ໜ່ວຍໃຫຍ່ທີ່ສຸດຕັ້ງຢູ່ໂນນພູທາງດ້ານຂວາມື ປາກໄຫຫັນໜ້າໄປທາງສະຫນາມບິນທົ່ງໄຫຫີນ "
                                  "ບໍລິເວນທີ່ຕັ້ງໄຫຫີນນີ້ເປັນຈຸດຊົມວິວທີ່ສວຍງາມອີກແຫ່ງໜຶ່ງເພາະສາມາດເບິ່ງເຫັນສະໜາມບິນທົ່ງໄຫຫິນ ກອງບັນຊາການກອງທັບອາກາດລາວ"
                                  " ຕົວເມືອງໂພນສະຫວັນ ສ່ວນທາງດ້ານຂວາມືຈະມີຂັ້ນໄດປູນ ຍ່າງລົງໄປຍັງທົ່ງໄຫຫີນອີກຈຸດໜຶ່ງ ຊຶ່ງມີຫລາຍກວ່າໃນຈຸດຊົມວິວແຫ່ງນີ້ "
                                  "ຈາກຈຸດຊົມວິວໄປທາງຊ້າຍມືຈະເຫັນໄຫຫີນ ຈຳນວນນັບສິບໆໜ່ວຍ ວາງລຽງລາຍຢູ່ເຕັມທົ່ງຫຍ້າ ຖັດມາທາງດ້ານຊ້າຍມືຂອງທົ່ງໄຫຫີນ "
                                  "ຈະພົບຖ້ຳແຫ່ງໜຶ່ງ ມີແສງແດດສາດສ່ອງລົງມາ ພາຍໃນຖ້ຳມີລັກສະນະ ເປັນປ່ອງມີຄວາມສູງປະມານ 60 ແມັດ "
                                  "ລັກສະນະພາຍໃນຖ້ຳບໍ່ເລິກປານໃດ ສາມາດບັນຈຸຄົນໄດ້ 50-60 ຄົນ ຖ້ຳແຫ່ງນີ້ເຄີຍໃຊ້ເປັນທີ່ຫລົບໄພສົງຄາມຂອງຊາວເມືອງຊຽງຂວາງ "
                                  "ຍາມເມື່ອເຮືອບິນ ມາຖິ້ມລະເບີດ ພ້ອມກັບໃຊ້ເປັນຄັງເກັບອາວຸດ ແລະ ເຊື້ອເພີງ ເມື່ອສົງຄາມອິນດູຈີນທີ່ຜ່ານມາ "
                                  "ບໍລິເວນໂດຍຮອບທົ່ງໄຫຫີນເທິງຈຸດຊົມວິວ ຈະພົບຮ່ອງຮອຍການຂຸດເປັນເດີ່ນ ເປັນແນວຍາວເພື່ອປ້ອງກັນການໂຈມຕີທາງອາກາດ "
                                  "ແລະ ຂຸມຫຼົບລະເບີດຂະໜາດໃຫຍ່ຫລາຍຂຸມ ຕະຫລອດຈົນຮ່ອງຮອຍທີ່ໄຫຫີນແຕກກະຈາຍອັນເປັນຜົນມາຈາກຝູງເຮືອບິນ ບີ 52 ຂອງອະເມຣິກາ"
                                  "ກຸ່ມທີ່ 2 ຄືກຸ່ມໄຫຫີນພູສະລາໂຕ ຢູ່ຖັດມາຈາກເມືອງໂພນສະຫວັນລົງມາທາງທິດໃຕ້ ປະມານ 25 ກິໂລແມັດ ຄອບຄຸມພື້ນທີ່ໂນນພູສອງໜ່ວຍ "
                                  "ຈະເບິ່ງເຫັນໄຫຫີນກະຈັດກະຈາຍຢູ່ໃນທົ່ງຫຍ້າປະມານ 94 ໜ່ວຍ."
                                  "ກຸ່ມທີ່ 3 ກຸ່ມໄຫຫີນລາດຄ່າຍ ຢູ່ຖັດລົງມາຈາກກຸ່ມໄຫຫີນພູສະລາໂຕ ປະມານ 10 ກິໂລແມັດ ປະກອບດ້ວຍໄຫຫີນປະມານ "
                                  "150 ໜ່ວຍ ກະຈາຍຢູ່ເທິງໂນນພູໜ່ວຍນ້ອຍ ເບິ່ງລົງມາເຫັນວິວ ທົ່ງຮາບ ຂອງທ້ອງທົ່ງທ້ອງນາຂອງ ບ້ານຊຽງດີ "
                                  "ຊຶ່ງຢູ່ເທິງໂນນພູໜ່ວຍຕໍ່ໄປ ໄດ້ຢ່າງຊັດເຈນ"
                                  "ສະຖານທີ່ຕັ້ງ ຫ່າງຈາກເມືອງໂພນສະຫະຫວັນເມືອງຫລວງໃໝ່ ຂອງແຂວງຊຽງຂວາງປະມານ 5 ກິໂລແມັດ.",
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
