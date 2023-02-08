import 'package:flutter/material.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';

import '../../North/LuangPrabang/ChiangThong.dart';
import '../../North/LuangPrabang/TadKvangSe.dart';
import '../Vientiane/Patusai.dart';
import '../Vientiane/ThaLuang.dart';

class Thampukham extends StatefulWidget {
  @override
  State<Thampukham> createState() => _ThampukhamState();
}

class _ThampukhamState extends State<Thampukham> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/Thampukham_2.jpg",
    "asset/img/Thampukham_3.jpg",
    "asset/img/Thampukham_4.jpg",
    "asset/img/Thampukham_5.jpg",
    "asset/img/Thampukham_6.jpg",
  ];

  String bg = "asset/img/Thampukham_1.jpg";

    List<String> img = [
    "asset/img/ChiangThong_2.jpg",
    "asset/img/Patusai_2.jpg",
    "asset/img/TadKvangSe_2.jpg",
    "asset/img/ThaLuang_6.jpg",
    "asset/img/WatPhu_1.jpg",
  ];

  List<Widget> location = [
    ChiangThong(),
    Patusai(),
    TadKvangSe(),
    ThaLuang(),
    WatPhu(),
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
                "ຖ້ຳປູຄຳ",
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
                                "ຖ້ຳປູຄຳຕັ້ງຢູ່ ບ້ານນາທອງ , ເມຶອງວັງວຽງ , ແຂວງວຽງຈັນ ເຊິ່ງຫ່າງຈາກເທດສະບານເມືອງວັງວຽງ 3,5 ກິໂລແມັດປະຫວັດຄວາມເປັນມາ"
                                " ເຊິ່ງ​ພົບເຫັນຈາກການສຳຫຼວດຂອງປະຊາຊົນທ້ອງຖິ່ນແລ້ວແມ່ນພົບເຫັນປາກຖ້ຳທີ່ຫ່າງຈາກໜ້າດິນປະມານ 100 ແມັດ",
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
                                  "ຈະມີຮູເຂົ້ານ້ອຍໆ ແລະ ເຂົ້າໄປທາງໃນຈະເປັນຜົ້ງກວ້າງຂວາງ, ມີພະນອນ 1 ອົງ ແລະໄດ້ກ່າວກັນວ່າ ມີປູຄຳຄູ່ 1 ອາໄສຢູ່ໃນຖໍ້າ"
                                  " ແລະຫຼັງຈາກນັ້ນກໍ່ໄດ້ເອີ້ນຖໍ້ານັ້ນວ່າ ຖໍ້າປູຄໍາ, (ຖ້າໃຜໂຊກດີແມ່ນຈະໄດ້ພົບເຫັນປູຄຳນັ້ນ) ຢູ່ຕີນຜາທາງລຸ່ມ ແມ່ນ ມີຫ້ວຍນ້ຳໃສເຢັນ"
                                  " ທີ່ໄຫຼອອກມາຈາກຮູຜານັ້ນ ແລະ ເມື່ອນ້ຳກະທົບໃສ່ແສງແດດສີຂອງນ້ຳກໍ່ຈະກາຍເປັນສີຟ້າທີ່ມີຄວາມສວຍສົດງົດງາມຫຼາຍ"
                                  "ສາມາດເດີນທາງໄປໄດ້ດ້ວຍລົດ ຫຼືການຍ່າງ . ເຊິ່ງນັກທ້ອງທ່ຽວສວ່ນຫຼາຍແມ່ນຈະເດີນທາງໄປດ້ວຍລົດຕຸກໆນຳທ່ຽວ ແລະ "
                                  "ການເດີນທາງໄປເສັ້ນທາງນີ້ກໍຖືວ່າມີຄວາມສະດວກສະບາຍຫຼາຍໃນປັດຈຸບັນ ຖ້າ ທຽບໃສ່ເມື່ອກ່ອນ ເພາະມີການປົວແປງເສັ້ນທາງຄືນໃໝ່ໃຫ້ມີເສັ້ນທາງປູຢາງໄປເຖິງຖ້ຳ,"
                                  " ການເດີນທາງໄປແມ່ນຜ່ານຂົວຂ້າມແມ່ນ້ຳຊອງ , ຜ່ານທົ່ງນາ ແລະ ບ້ານເຮືອນຂອງປະຊາຊົນ. ຈະປະກົດເຫັນວິວທິວທັດທີ່ສວຍງາມ ແລະ ວິຖີການດຳລົງຊີວິດຂອງປະຊາຊົນເຂດນັ້ນໆ"
                                  "ນອກຈາກຈະມີສະຖານທີ່ທາງທຳມະຊາດທີ່ສວຍງາມແລ້ວ ຖ້ຳປູຄຳຍັງມີຮ້ານອາຫານ, ຕູບ, ໂຕະ, ຕັ່ງ ຕ່າງໆໄວ້ຄອຍບໍລິການນັກທ້ອງທ່ຽວ "
                                  "ເຊິ່ງການບໍລິການດ້ານຕ່າງໆແມ່ນມາຈາກປະຊາຊົນທ້ອງຖິ່ນ ເປັນສວ່ນໃຫ່ຍ ເຊິ່ງຈັດຕັ້ງກັນເປັນໜ່ວຍໄວ້ຄອຍບໍລິການນັກທ້ອງທ່ຽວ , "
                                  "ພ້ອມກັນນີ້ຍັງມີການອຳນວຍຄວາມສະດວກທາງດ້ານສຸຂະອານາໄມ ເຊັ່ນ ມີຫ້ອງນ້ຳບໍລິການທີ່ສະອາດໄວ້ຄອຍບໍລິການນັກທ້ອງທ່ຽວ ແລະ "
                                  "ຍັງມີອຸປະກອນອຳນວຍຄວາມສະດວກໃຫ້ເຊົ່າ ເຊັ່ນໂຄມໄຟ ແມ່ນໃຊ້ໃນເວລາຂຶ້ນຊົມຖໍ້າ, ເສື້ອຊູຊີບແລະກົງເບັງແມ່ນໃຊ້ເວລາລົງຫຼິ້ນນ້ຳ"
                                  "ນອກຈາກນີ້ຍັງມີການບໍລິການສຳລັບນັກທ້ອງທ່ຽວທີ່ມັກຄວາມທ້າທາຍແລະຢາກທ່ຽວຊົມຮູບພາບທຳມະຊາດຈາກທີ່ສູງເຊັ່ນ ການບໍລິການສະລິງລອຍຟ້າ"
                                  "ລາຍລະອຽດທາງດ້ານລາຄາຂອງການໃຊ້ບໍລິການຕ່າງໆມີຄື:ຄ່າເຂົ້າຊົມຖໍ້າ 10,000 ກີບ / 1ຄົນ,ຄ່າຈອດລົດໃຫ່ຍ 10,000 ກີບ / 1 ຄັນ,ຄ່າຈອດລົດຈັກ 3,000 ກີບ / 1ຄັນ"
                                  ",ຄ່າຫ້ອງນ້ຳບໍລິການ 2,000ກີບ / 1ຄັ້ງ,ຄ່າເຊົ່າໂຄມໄຟແລະອຸປະກອນຕ່າງໆ 10,000 ກີບ / 1ຢ່າງ",
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
