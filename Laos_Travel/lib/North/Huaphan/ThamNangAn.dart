// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';

import '../../Central/Viangchan/Thampukham.dart';
import '../../Central/Vientiane/Patusai.dart';
import '../../Central/Vientiane/ThaLuang.dart';
import '../LuangPrabang/ChiangThong.dart';
import '../LuangPrabang/TadKvangSe.dart';

class ThamNangAn extends StatefulWidget {
  @override
  State<ThamNangAn> createState() => _ThamNangAnState();
}

class _ThamNangAnState extends State<ThamNangAn> {
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
                "ຖ້ຳນາງອັ່ນ",
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
                                "ຖ້ຳ​ນາງ​ອັ່ນ​ເປັນ​ຖ້ຳ​ທຳ​ມະຊາດ​ຢູ່​ໃກ້ໆ​ບ້ານ​ນາ​ສົມ ເຂດ​ເທດສະ​ບານ​ຂອງ​ເມືອງ​ຈອມ​ເພັດ ແຂວງ​ຫລວງ​ພະ​ບາງ​ໄປ​ທາງຟາກ​ຝັ່ງ"
                                "​ຂວາ​ແມ່­ນ້ຳ​ຂອງ​ຫ່າງ ຈາກ​ຕົວ​ເມືອງ​ຫລວງ​ພະ​ບາງ​ໄປ ປະ­ມານ 20 ກິ­ໂລ­ແມັດ ຖ້ຳ​ດັ່ງກ່າວ​ຕັ້ງ​ຢູ່​ຕີນ​ພູ​ສູງ​ໃກ້ໆ​ກັບ​ທົ່ງນາ​ຂອງ"
                                "​ປະ­ຊາ­ຊົນ ເຊິ່ງ​ມີ​",
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
                                  "320 ກວ່າແມັດ, ຈາກ​ພື້ນ​ພຽງ​ຂອງ​ທົ່ງ​ນາ​ໄລ­ຍະທາງ​ຈາກ​ບ້ານ​ນາ​ສົມໄປ​ສູ່​ຕີນ ພູ​ປະ­ມານ 1 ກິ­ໂລ­ແມັດ.  "
                                  "ທິວ​ທັດ​ທຳ​ມະ​ຊາດ ຖືກ​ປົກຄຸມ​ໄປ​ດ້ວຍ​ປ່າ­ໄມ້​ສີ­ຂຽວ​ອຸ່ມ​ທຸ່ມສົດ­ຊື່ນ​ທີ່​ເບັ່ງ​ບານ​ຕະ­ຫລອດ​ປີ ເພາະ​ມັນ​ເປັນ​ເຂດ​ພູ​ສູງ"
                                  " ແລະ ຫມອກ​ປົກ​ຄຸມ​ເກືອບ​ວ່າ​ຫມົດ​ປີ, ຖ້າ​ຫາກ​ທ່ານ​ໄດ້​ໄປ​ທີ່​ນັ້ນ​ແມ່ນຈະ​ໄດ້​ຂ້າມ​ຫ້ວຍ​ໄມ້­ໄຜ່​ລຽນ​ລຳເຮັດ​ເປັນ​ຂົວ​ຂ້າມ​ຂອງ​ປະ­ຊາ­ຊົນໃນ​ເຂດ​ນັ້ນ"
                                  " ແລະ ຜ່ານ​ທົ່ງ​ນາດ້ວຍ​ການ​ຍ່າງ ຫລື ຂີ່​ລົດ­ຖີບ​ເທົ່ານັ້ນ ທີ່​ຈະ​ໄດ້​ຜ່ານ​ປ່າ​ເຂົ້າ​ໄປ​ຫາຖ້ຳ​ມີ​ພຽງ​ທາງ​ຍ່າງ​ນ້ອຍໆ​ພໍ­ໄດ້ຫມົ້ນ​ເຂົ້າ​ໄປ​ໄດ້ "
                                  "ເພາະ​ປ່າ­ໄມ້ນາໆ​ຊະ­ນິດ​ປົກ​ຄຸມ​ຫມົດ​ທັງສອງ​ຟາກ​ທາງ​ເຮັດ​ໃຫ້​ເຮົາ​ຮູ້­ສຶກເຢັນ​ສະ­ບາຍ ເມື່ອ​ໄດ້​ເຂົ້າ​ມາ​ໃນທີ່​ນີ້, ພໍ​ໄປ​ຮອດ​ຈະ​ສັງ­ເກດ​ເຫັນປາກ​ຖ້ຳ​ດັ່ງ­ກ່າວ"
                                  " ກວ້າງ​ປະ­ມານ 12 ແມັດ ສູງ​ປະ­ມານ 20 ແມັດ ຕັ້ງ​ຢູ່​ກ້ອງ​ຫນ້າ­ຜາ​ສູງ​ຊັນ ແຕ່​ສິ່ງສຳ­ຄັນ​ແມ່ນ​ມີ​ຕົ້ນ​ໄຮ​ໃຫຍ່​ໂອບກອດ​ກ້ອນ​ຫີນ​ນ້ອຍ-ໃຫຍ່​ດ້ວຍຮາກ​ຂອງ​"
                                  "ມັນ​ຢັ່ງ­ຢາຍ​ໄປ​ນັບ​ແຕ່ປາກ​ຖ້ຳ​ຈົນ​ຮອດ​ຫນ້າ­ຜາຢູ່​ທີ່​ນີ້ ກ້ອນ​ຫີນ​ນ້ອຍ-ໃຫຍ່​ຫລາຍຫນ່ວຍ​ເປັນ​ບ່ອນ​ພັກ​ເຊົາ​ແຮງຂອງ​ຜູ້​ທີ່​ເຂົ້າ​ມາ​ເຖິງ​ສະ­ຖານ­ທີ່ແຫ່ງ​ນີ້, "
                                  "ຈະ​ສັງ­ເກດ​ເຫັນ​ໄດ້​ຢູ່ປາກ​ຖ້ຳ​ມີ​ໂຕ​ຫນັງ­ສື​ຖືກ​ຂຽນ​ໄວ້ ເປັນ​ໂຕ​ທຳ​ມະ​ບາ​ລີສີ­ຂຽວ​ເຂັ້ມ ຢູ່​ສອງ​ຈຸດ​ຄື: ຂຽນ​ໄວ້​ທາງ​ເທິງ ຫນ້າ­ຜາທາງ​ເທິງ​ຈະ​ລຽນ​ກັນເປັນ​ຕົວ"
                                  "ຫນັງ­ສື​ສອງ​ແຖວ​ສ່ວນ​ຢູ່ກ້ອງ​ຈະ​ເປັນ​ໂຕ​ຫນັງ­ສື 3 ແຖວ ຊາວ­ບ້ານ​ເຂດ​ນັ້ນ​ເຊື່ອ​ວ່າ​ແມ່ນບົດ​ບັນ­ທຶກ​ທີ່​ຈາ­ລຶກ​ປະ­ຫວັດສາດ​ຂອງ​ນາງ​ອັ່ນ, "
                                  "ນາງ​ອັ່ນເປັນ​ສາວ​ງາມ​ປະ­ຈຳ​ຫມູ່​ບ້ານໃນ​ສະ­ໄຫມ​ນັ້ນ ເກີດ​ຢູ່​ບ້ານ​ສົມ ເມືອງ​ຊຽງ​ແມນດິນ­ແດນ​ແຫ່ງອາ­ນາ­ຈັກ​ຊຽງ​ທອງໃນ​ໄລ­ຍະນັ້ນ, "
                                  "ຈຸດ​ພິ­ເສດ​ຂອງ​ນາງ​ເປັນ​ຄົນງາມນິດ​ໄສ​ດີ ເປັນ​ຜູ້​ທີ່​ໄດ້​ຮັບການ​ຍ້ອງ­ຍໍ​ສັນ­ລະ­ເສີນ​ຈາກ​ທຸກ ຄົນ​ໃນ​ຫມູ່​ບ້ານ ເຊິ່ງ​ເລື່ອງ​ລາວ ກໍ່​ບໍ່​ແຕກ​ຕ່າງ​ຫຍັງ​ກັບ​ທ້າວ​ບາຈຽງ "
                                  "ແລະ ນາງ​ມະ­ໂລງສຸດ ທ້າຍ​ເລື່ອງ​ລາວ​ກໍ່​ຈົບ​ດ້ວຍ​ການຂ້າ​ໂຕ​ຕາຍ​ຄື​ກັນ."
                                  "ນາຍ­ບ້ານ ບ້ານ​ນາ​ໂຮມ​ໃຫ້​ຮູ້ວ່າ: ອີງ​ຕາມ​ເຫດ­ການ​ທາງ​ປະຫວັດ​ສາດ​ໃນ​ປາງ​ກ່ອນຂົງ­ເຂດນີ້ ​ມີ​ຕົວ​ອັກ­ສອນ​ເທວະ​ນາ​ຄຣີ ໄດ້​ແຜ່​ຈາກ​ປະ­ເທດ​ອິນ​ເດຍທາງ​ພາກ​ເຫນືອ​ເຂົ້າ​ມາ­ສູ່​ທາງ"
                                  " ພາກ​ເຫນືອ​ຂອງ​ລາວ ແລະ ບົດຈາ­ລຶກ​ອັນ​ປິດ­ສະ­ຫນາ​ດັ່ງ­ກ່າວ ບໍ່​ໄດ້​ບອກ​ຊື່​ຂອງ​ຜູ້​ຈາ­ລຶກ ແລະ ວັນ​ທີເດືອນ ປີ​ຢ່າງ​ລະ­ອຽດ​ແຕ່ຢ່າງ­ໃດ "
                                  "ມີ​ພຽງ​ແຕ່​ຕົວ​ອັກ­ສອນລາວ​ບູ­ຮານ​ທີ່​ຈັດ​ວາງ​ທີ່​ຫນ້າ­ຜາປາກ​ຖ້ຳ​ເທົ່າ​ນັ້ນ ທີ່​ໄດ້​ຕົ້ນ​ແບບມາ​ຈາກ​ພາ­ສາ​ອິນ​ເດຍ​ບູ­ຮານທີ່ມີ​ຊື່­ວ່າ: "
                                  "ອັກ­ສອນ​ເທວະ​ນາ​ຄຣີທີ່​ໃຊ້​ຂຽນ​ເປັນ​ພາ­ສາ​ສັນ­ສະ­ກິດ ເຊິ່ງ​ຄວາມ​ຫມາຍ​ຂອງ​ມັນ​ກໍ່ແມ່ນ​ເປັນ​ຖ້ຳ​ຂອງ​ນາງ​ອັ່ນ​ຫລົບຫນີ​ຈາກ​ການ​ບັງ­ຄັບ​ໃຫ້​ແຕ່ງດອງ​ກັບ​ຄົນ​ທີ່​ຕົນ​ບໍ່​ໄດ້​ຮັກ ດ້ວຍການ​ຂ້າ​ໂຕ​ຕາຍ​ຢູ່​ທີ່​ນັ້ນ."
                                  "ກ່ອນ​ເຂົ້າ​ຖ້ຳ​ແຫ່ງ​ນີ້ ຜູ້​ພາ​ໄປ ເພິ່ນ​ບອກ​ວ່າ: ຕ້ອງ​ໃຊ້​ໄຟ​ເຍືອງທາງ ເພາະ​ມັນ​ເປັນ​ຖ້ຳ​ມືດ​ມີຫລາຍ​ທາງ​ຍ່າງ​ເຂົ້າ​ໄປ​ໃນ​ຕ້ອງຍ່າງ​ໄປ​ເປັນ​ຫມູ່​ຄະ­ນະ, "
                                  "ຖ້າ​ຫາກຍ່າງ​ໄປ​ຄົນ​ດຽວ​ອາດ​ຈະ​ຫລົງທາງ​ໄດ້, ຢູ່​ທາງ​ໃນ​ຖ້ຳ​ມີ​ເຫວເລິກ​ທີ່​ອັນ­ຕະ­ລາຍ ເຊິ່ງ​ຕ້ອງ​ມີ​ຜູ້ສຳ​ນານ​ທາງ​ເທົ່າ​ນັ້ນ​ພາ​ໄປ ເພື່ອຄວາມ​ປອດ​ໄພ​ຂອງ​ນັກ​ທ່ອງທ່ຽວ,"
                                  " ພາຍ​ໃນ​ຖ້ຳ​ອາ­ກາດ​ເຢັນ, ພື້ນ​ຮາບ​ພຽງ​ດີ, ບາງ​ບ່ອນ​ເປັນຫີນ​ງອກ​ຕັ້ງ​ຢູ່​ສູງ​ຊັນ​ຂຶ້ນ​ໄປ​ດັ່ງຮູບ​ທາດ ຢູ່​ເພ­ດານ​ດ້ານ​ເທິງ​ເປັນຫີນ​ຍ້ອຍ​ໂຕ່ງ​ໂຕ່ຍ​ລົງ​ມາ "
                                  "ເຊິ່ງຄົນ​ທ້ອງ­ຖິ່ນ​ນີ້​ເອີ້ນ​ວ່າ: ນົມ​ຜາ, ທີ່​ຜາ​ຜະ­ຫນັງ​ຖ້ຳ​ກໍ່​ມີ​ຫີນ​ຍ້ອຍ​ລົງ ມາ​ເກາະ​ຢູ່​ຕາມ​ຜາ​ຜະ­ຫນັງ​ຖ້ຳມີ​ຫລາຍ​ຮູບ​ຫລາຍ​ສີ​ເຫັນ​ແລ້ວ "
                                  "ສຸດ​ທີ່​ອອນ­ຊອນ​ເຫລືອ​ທີ່​ຈະ​ພັນລະ​ນາ​ໃນ​ຄວາມ​ງາມ​ຂອງ​ທຳ ມະ​ຊາດ​ສ້າງ​ໄວ້, ທັງ​ເປັນ​ບ່ອນ ນອນ​ຂອງ​ຈຳ­ພວກ​ເຈຍ ແລະ ນົກ​ອື່ນໆ​ອີກ "
                                  "ຫລາຍ​ຊະ­ນິດ​ພວກເຮົາ​ໃຊ້​ເວ­ລາ​ປະ­ມານ 30 ນາ­ທີ ທ່ຽວ​ຊົມ​ຄວາມ​ງາມ​ຢູ່​ພາຍ​ໃນຖ້ຳ​ທີ່​ທຳ​ມະ​ຊາດ​ສ້າງ​ໄວ້​ຢ່າງປາ­ນີດ "
                                  "ຈົບ­ງາມ​ມີ​ສີ­ສັນ​ຮູບ​ລັກສະ​ນະ​ຕ່າງໆ​ຫລາກ​ຫລາຍ​ເມື່ອໄດ້​ເຫັນ​ຮູ້­ສຶກ​ວ່າ​ເຫມືອນ​ມີ​ສິ່ງມະ­ຫັດ­ສະ­ຈັນ​ທີ່​ຖືກ​ສ້າງ​ຂຶ້ນ​ໃນຖ້ຳ​ແຫ່ງ​ນີ້.",
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
