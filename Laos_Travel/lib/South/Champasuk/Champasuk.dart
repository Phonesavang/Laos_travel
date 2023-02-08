import 'package:flutter/material.dart';
import 'package:my_app/South/Champasuk/KhonPhapheng.dart';
import 'package:my_app/South/Champasuk/TadFan.dart';
import 'package:my_app/South/Champasuk/WatPhu.dart';
import 'package:my_app/Model/ModelCard.dart';
import 'package:my_app/Model/ModelSwitch.dart';
import 'package:my_app/UserPost.dart';

class Champasuk extends StatelessWidget {
  const Champasuk({super.key});

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
          width: double.infinity,
          child: Image.asset(
            "asset/img/S21.JPG",
            fit: BoxFit.cover,
            color: Colors.tealAccent.withOpacity(0.3),
            colorBlendMode: BlendMode.colorBurn,
          ),
        ),
        SizedBox(
          height: 250,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "ຈຳປາສັກ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
                  decoration: const BoxDecoration(
                      color: Color(0xFFffffff),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        ModelCard(
                            "asset/img/S21.JPG",
                            "ວັດພູຈຳປາສັກ",
                            "ວັດພູຈຳປາສັກ ມໍລະດົກໂລກ ຂອງລາວຈາກອົງການ UNESCO"
                                "ວັດ​ພູ​ໄດ້​ຂຶ້ນ​ທະ​ບຽນ​ເປັນ​ມໍລະດົກ​ໂລກ​ແຫ່ງ​ທີ່​ສອງ​ຂອງ​ປະເທດ​ລາວ​​ຫີນ​ເກົ່າ​ແກ່​ແຫ່ງ​ນີ້​ເປັນ​ບູຮານ​ສະຖານ​ທີ່​ຕັ້ງ​ເດັ່ນ...",
                            WatPhu()),
                        ModelSwitch(
                            "ນ້ຳຕົກຕາດຄອນພະເພັງ",
                            "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the...",
                            "asset/img/S22.JPG",
                            KhonPhapheng()),
                        ModelCard(
                            "asset/img/S23.jpg",
                            "ນ້ຳຕົກຕາດຟາດ",
                            "ນ້ຳຕົກຕາດຟານ ທີ່ຕັ້ງຢູ່:ເສັ້ນທາງເລກທີ13ເສັ້ນທາງໄປປາກຊ່ອງມາເຖີງຫຼັກກິໂລ 38  ນ້ຳ​ຕົກ​ຕາດ​ຟານ "
                                "(ຕາດ ຄື ນ້ຳ​ຕົກຟານ ຄື ຊື່​ຂອງ ສັດ​ປ່າ​ຊະນິດ​ໜຶ່ງ ) ນ້ຳ​ຕົກ​ຕາດ​ຟານ ຫລື ຮຽກອີກ ຊື່​ໜຶ່ງ​ວ່າ...",
                            Champasuk()),
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
