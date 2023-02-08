import 'package:flutter/material.dart';
import 'package:my_app/Central/Viangchan/Thampukham.dart';
import 'package:my_app/Central/Vientiane/Patusai.dart';
import 'package:my_app/Central/Vientiane/ThaLuang.dart';
import 'package:my_app/North/LuangPrabang/ChiangThong.dart';
import 'package:my_app/North/LuangPrabang/TadKvangSe.dart';
import 'package:my_app/Model/Modelimgsc.dart';
import 'package:my_app/UserPost.dart';

class WatPhu extends StatefulWidget {
  @override
  State<WatPhu> createState() => _WatPhuState();
}

class _WatPhuState extends State<WatPhu> {
  // const ChiangThong({super.key});
  List<String> item = [
    "asset/img/WatPhu_2.jpg",
    "asset/img/WatPhu_3.jpg",
    "asset/img/WatPhu_4.jpg",
    "asset/img/WatPhu_5.jpg",
    "asset/img/WatPhu_6.jpg",
  ];

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

  String bg = "asset/img/WatPhu_1.jpg";

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
            color: Colors.tealAccent.withOpacity(0.3),
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
                "ວັດພູຈຳປາສັກ",
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
                                "ວັດພູຈຳປາສັກ ມໍລະດົກໂລກ ຂອງລາວຈາກອົງການ UNESCO"
                                "ວັດ​ພູ​ໄດ້​ຂຶ້ນ​ທະ​ບຽນ​ເປັນ​ມໍລະດົກ​ໂລກ​ແຫ່ງ​ທີ່​ສອງ​ຂອງ​ປະເທດ​ລາວ​​ຫີນ​ເກົ່າ​ແກ່​ແຫ່ງ​ນີ້​ເປັນ​ບູຮານ​ສະຖານ​ທີ່​ຕັ້ງ​ເດັ່ນ​ຢູ່​ເທິງ​ໂນນພູ"
                                "​ພູ​ບ່ອນນີ້​ເຄຍ​ເປັນ​ສະຖານ​ທີ່​ສັກສິດ ​ແລະ​ ແຫຼ່ງ​ອາລະຍະທຳ​ບູຮານ​ເຖິງ​​",
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
                                  "3 ສະໄໝ​ນຳກັນ​ຄື ອານາຈັກ​ເຈນ​ລະ​ ອານາຈັກ​ຂອມ​ ແລະ​ສຸດ​ທ້າຍ​ອານາຈັກ​ລ້ານ​ຊ້າງ"
                                  "ວັດພູ (ພາສາອັງກິດ: Vat Phou) ບູຮານສະຖານວັດຖຸ ຕັ້ງຢູ່ພາກໃຕ້ຂອງລາວ ທີ່ແຂວງຈຳປາສັກ ຊຶ່ງເປັນແຂວງທີ່ມີຊາຍແດນຕິດກັບປະເທດກຳປູເຈຍ ຫ່າງຈາກອັງກໍວັດປະມານ 200 ກິໂລແມັດ ແລະ ປະມານ 1 ຊົ່ວໂມງ ໄປທາງລົດຈາກປາກເຊ. ວັດພູຈຳປາສັກໄດ້ຖຶກຮັບຮອງ ໃຫ້ເປັນມໍລະດົກໂລກ ຈາກອົງການຢູເນສໂກ (UNESCO)"
                                  "ເປັນສະຖາປັດຕະຍະກຳພິເສດແຫ່ງໜື່ງ ທີ່ມີຄວາມເກົ່າແກ່ ຊຶ່ງເປັນອາຄານກົກເຄົ້າ ສ້າງຂຶ້ນໃນສັດຕະວັດທີ 6, ຈາກນັ້ນກໍ່ມີ "
                                  "ການຕໍ່ເຕີມຕາມຍຸກສະໄໝຕໍ່ມາ ຈົນມາເຖິງສັດຕະວັດທີ 15. ວັດພູເປັນບູຮານສະຖານ ທີ່ໄດ້ອິດທິພົນທາງດ້ານວັດທະນະທຳ"
                                  "ມາຈາກຫຼາຍແຫ່ງຊຶ່ງລວມມີສິລະປະຂອມ, ອິນດູ ແລະ ພຸດຕາມຮ່ອງຮອຍຫຼັກຖານທີ່ສະແດງໃຫ້ເຫັນໃນລວດລາຍສິລະປະ"
                                  "ຕາມສະຖານທີ່ຕ່າງໆ  ໃນຂົງເຂດວັດແຫ່ງນີ້ ບໍ່ວ່າຈະເປັນຮີດຄອງ ຫຼື ການເຊື່ອຖື. ສິ່ງທີ່ຍັງຄົງໄວ້ໃຫ້ເຫັນມາຮອດ ປະຈຸບັນ ຂອງວັດພູ"
                                  "ທີ່ເລີ່ມສ້າງມາແຕ່ ຈ.ສ 1000 ກໍ່ຄື: ສິລະປະຂອງຮິນດູ, ໂດຍມີການເຊື່ອຖືເທບພະເຈົ້າ ຂອງສາສະໜາຮິນດູ ຈາກປະກົດການທຳມະຊາດ"
                                  "ພູເກົ້າ ຊຶ່ງເປັນຈຸດປະກາຍຫຼັກ ໃນການມາສ້າງວັດພູ. ສ່ວນປະກອບຂອງ ວັດມີຮູບຊົງໄຕຣມູມ, ເປັນລຳດັບຄືມີການຄິດໄລ່ ທີ່ຊັດແຈ້ງເຊັ່ນ:"
                                  "ຮ່ອງນໍ້າທີ່ສົ່ງນໍ້າສັກສິດຍາວຢຽດອອກໄປເຖິງ 10 ກິໂລແມັດ ທີ່ສ້າງດ້ວຍຜູ້ຄົນໄດ້ອ້າງໃຫ້ຮູ້ເຖິງການອອກແບບຄັ້ງທຳອິດ ຂອງສັງຄົມຢູ່ໃນປະຫວັດສາດນຳອີກດ້ວຍ."
                                  "ປັດໃຈອື່ນກ່ຽວກັບ ການມີອຳນາດແຊກແຊງລັດທັງອິນດູ ແລະ ການເລືອກ ສະຖານທີ່ສ້າງວັດພູແມ່ນເລືອກເອົາເສັ້ນຂະໜານ ທິດຕາ ເວັນອອກ–ຕາເວັນຕົກເປັນຫຼັກ,"
                                  "ເຊັ່ນດຽວກັນກັບຈອມພູເກົ້າ ຊຶ່ງປະກອບກັບປະກົດການທາງທຳມະຊາດ ຮ່ວມກັບແນວຄິດຂອງພຣະສີວະໃນສາສະໜາຮິນດູ."
                                  "ການຖືຕາເວັນຂື້ນ ກໍ່ມີຄວາມກ່ຽວພັນກັບພຣະສີວະ, ດັ່ງນັ້ນມັນຈື່ງໄດ້ເກີດມີການເລືອກທິດທາງ ໃຫ້ມັນໄປລວງດຽວກັບທິດຕາເວັນອອກ–ຕາເວັນຕົກ. ຫຼັງຈາກຫຼາຍສັດຕະວັດຂອງການລີ້ຊ້ອນຢູ່ໃນຄວາມຊຸດໂຊມ, ຖືກປົກປິດໄວ້ຢູ່ໃນປ່າ, ນັກສຳຫຼວດທາງຊາວຝຣັ່ງ, ທ່ານ ອອງຣີ ປາກມອງຈີເອ, ຈຶ່ງໄດ້ຄົ້ນພົບ ວັດພູຄືນອີກໃນປີ ຄ.ສ 1914. ຫຼັງຈາກໄດ້ຖ່າຍຮູບເອົາສະຖານທີ່ນີ້ແລ້ວ, ອີກຄັ້ງໜື່ງ ແລະ ກໍ່ມິດງຽບຫາຍໄປ ໂດຍຄວາມບໍ່ໄດ້ເອົາໃຈໃສ່ໃຫ້ຄວາມສຳຄັນ. ຄວາມສົນໃຈໄດ້ກັບຄືນມາອີກເທື່ອໃໝ່ໃນກາງປີ ຄ.ສ 1980 ເວລາທີ່ອົງການ ຢູເນັດສໂກ (UNESCO) ໄດ້ເລີ່ມຕົ້ນລົງໄປສຳຫຼວດ ດ້ານບູຮານສະຖານ ຂອງສະຖານທີ່ແຫ່ງນີ້. ການລົງສຳຫຼວດໃນເທື່ອນີ້  ໄດ້ນຳໄປສູ່ການຈົດບັນທຶກເຂົ້າເປັນມໍລະດົກພາຍໃຕ້ ການຄຸ້ມຄອງຂອງກົດໝາຍວ່າດ້ວຍ ມໍລະດົກທີ່ໄດ້ສ້າງຂື້ນ, ຊຶ່ງມີເນື້ອໃນ ວ່າດ້ວຍການປົກປັກຮັກສາບູລະນະ ອະນຸຮັກສະຖານທີ່ນີ້ໄວ້ໃນປີ ຄ.ສ 2001"
                                  "ຄ່າ​ເຂົ້າ​ຊົມ​: 20,000 ກີບ​ ສໍາລັບຄົນລາວ50,000 ກີບ​ ສໍາລັບຄົນຕ່າງປະເທດເວລາ​ເປີດ​-ປິດ​:08:00-18:00 ນ.​",
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
