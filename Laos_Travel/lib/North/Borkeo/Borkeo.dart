import 'package:flutter/material.dart';
import 'package:my_app/North/Borkeo/Anusathan.dart';
import 'package:my_app/North/Borkeo/Phathad.dart';
import 'package:my_app/North/Borkeo/SamRiam.dart';
import 'package:my_app/North/Huaphan/Bonamhon.dart';
import 'package:my_app/North/Huaphan/ThamNangAn.dart';
import 'package:my_app/North/North.dart';
import 'package:my_app/Model/ModelCard.dart';
import 'package:my_app/Model/ModelSwitch.dart';
import 'package:my_app/UserPost.dart';

class Borkeo extends StatelessWidget {
  // const LuangPrabang({super.key});
  String bg = "asset/img/Bg.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // backgroundColor: Color(0xFFF4F6FF),
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
            bg,
            fit: BoxFit.cover,
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
                "ບໍ່ແກ້ວ",
                style: TextStyle(
                    color: Colors.white, fontSize: 60, fontFamily: "Tiktok"),
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
                            "asset/img/BgN.jpg",
                            "ສາມຫຼ່ຽມທອງຄຳ",
                            "ເຂດເສດຖະກິດພິເສດ ສາມຫຼ່ຽມທອງຄຳຕັ້ງຢູ່ເມືອງຕົ້ນເຜິ້ງ, ແຂວງບໍ່ແກ້ວ, ມີເນື້ອທີ່ 10.000 ເຮັກຕາ, ໃນນັ້ນແບ່ງເປັນເຂດພັດທະນາຕົວເມືອງ 3.000ເຮັກຕາ ແລະ ປ່າປ້ອງກັນແຫ່ງຊາດ  ... ",
                            SamRiam()),
                        ModelSwitch(
                            "ພະທາດຕາກຜ້າຄຳ",
                            "ພະທາດຕາກຜ້າຄຳ ຕັ້ງຢູ່ເທິງເນີນພູສູງ 200 ແມັດ,ຫ່າງຈາກທ່າເຮືອທ່າດ່ານ 3 ກິໂລແມັດ,ທາງຂື້ນຫ່າງຈາກທ່າເຮືອໄວປະມານ 100 ແມັດ,ພາຍໃນບໍລິເວນວັດມີພະອຸໂປສົດຂະໜາດກາງ...",
                            "asset/img/BgS.jpg",
                            Phathad()),
                        ModelCard(
                            "asset/img/Bg.jpg",
                            "ອະນຸສະຖານທ່ານໄກສອນ",
                            "ອະນຸສອນສະຖານປະທານ ໄກສອນ ພົມວິຫານ ຕັ້ງຢູ່ຫ່າງຈາກທ່າເຮືອທ່າດ່ານປະມານ 1 ກິໂລແມັດ,ອະນຸສອນສະຖານ ຂອງທ່ານປະທານ ໄກສອນ ພົມວິຫານ ອະດີດປະທານປະເທດຂອງ...",
                            Anusathan()),
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
