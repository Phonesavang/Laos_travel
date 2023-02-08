import 'package:flutter/material.dart';
import 'package:my_app/Central/Vientiane/Patusai.dart';
import 'package:my_app/Central/Vientiane/ThaLuang.dart';
import 'package:my_app/Model/ModelCard.dart';
import 'package:my_app/Model/ModelSwitch.dart';
import 'package:my_app/UserPost.dart';

class Vientiane extends StatelessWidget {
  const Vientiane({super.key});

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
            "asset/img/ThaLuang_6.jpg",
            fit: BoxFit.cover,
            color: Colors.tealAccent.shade400.withOpacity(0.3),
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
                "ນະຄອນຫຼວງວຽງຈັນ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontFamily: "Tiktok",
                    fontWeight: FontWeight.bold),
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
                            "asset/img/ThaLuang_1.jpg",
                            "ພະທາດຫຼວງວຽງຈັນ",
                            "ພະ​ທາດ​ຫຼວງ​ຕັ້ງ​ຢູ່​ທາງ​ທິດ​ຕະເວັນ​ອອກ​ສຽງ​ເໜືອ​ຂອງ​ປະ​ຕູໄ​ຊ​ຫາກ​ໄປ​ທ່ຽວ​ວຽງ​ຈັນ​ຕ້ອງ​ບໍ່​ພາດ​ໄປ​ຢ້ຽມ​ຊົມ​ພະທາດຫຼວງ ​ອີກ​ຊື່​ວ່າ​ ພະ​ເຈ​ດີ​ໂລ​ກະ​ຈຸ​ລາມ​ນີ​ ປູຊະນີຍະສະຖານ​ອັນສຳຄັນອາຍຸນັບພັນປີ...",
                            ThaLuang()),
                        ModelSwitch(
                            "ປະຕູໄຊ",
                            "ປະ​ຕູ​ໄຊ​,ວຽງ​ຈັນ​​ປະຕູໄຊອີກ​ໜຶ່ງ​ສະຖານທີ່ຂອງ​ນະຄອນ​ຫຼວງ​ວຽງ​ຈັນ​ເປັນ​ອະນຸສອນ​ສະຖານ​ເພື່ອ​ລະ​ລຶກ​ເຖິງ​ປະຊາຊົນ​ຊາວ​ລາວ​ຜູ້​ເສຍ​ສະລະ​ຊີວິດ​ໃນ​ສົງຄາມ​...",
                            "asset/img/Patusai_1.jpg",
                            Patusai()),
                        ModelCard(
                            "asset/img/Semuemg.jpg",
                            "ວັດສີເມືອງ",
                            "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the...",
                            Vientiane()),
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
