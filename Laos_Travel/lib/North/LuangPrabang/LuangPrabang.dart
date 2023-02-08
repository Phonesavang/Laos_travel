import 'package:flutter/material.dart';
import 'package:my_app/North/LuangPrabang/ChiangThong.dart';
import 'package:my_app/North/LuangPrabang/TadKvangSe.dart';
import 'package:my_app/North/North.dart';
import 'package:my_app/Model/ModelCard.dart';
import 'package:my_app/Model/ModelSwitch.dart';
import 'package:my_app/UserPost.dart';

class LuangPrabang extends StatelessWidget {
  // const LuangPrabang({super.key});
  String bg = "asset/img/ChiangThong_2.jpg";

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
            color: Colors.black.withOpacity(0.2),
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
                "ຫຼວງພະບາງ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
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
                            "asset/img/ChiangThong_1.jpg",
                            "ວັດຊຽງທອງ",
                            "ວັດຊຽງທອງສ້າງຕັ້ງຂຶ້ນໃນ ປີ ຄສ 1560, ສ້າງໂດຍ ພຣະເຈົ້າໄຊຍະເສດຖາທິລາດ. ຕັ້ງຢູ່ໃກ້ແຄມແມ່ນ້ຳຂອງ ເປັນສະຖາປັດຕະຍະກຳລັານຊ້າງທີ່ສວຍສົດງົດງາມແຫ່ງໜຶ່ງໃນຫລວງພະບາງ...",
                            ChiangThong()),
                        ModelSwitch(
                            "ນ້ຳຕົກຕາດກວ້າງຊີ",
                            "ນໍ້າຕົກຕາດກວາງຊີ ຕັ້ງຢູ່ເຂດບ້ານທ່າແປ້ນຫ່າງຈາກຕົວເມືອງປະມານ 25 ກິໂລແມັດ. ຕາດນີ້ເປັນນໍ້າຕົກຕາດຫີນປູນເຊິ່ງມີຄວາມສູງປະມານ 80 ແມັດຫຼຸດລົງມາເປັນຊັ້ນໆ...",
                            "asset/img/TadKvangSe_1.jpg",
                            TadKvangSe()),
                        ModelCard(
                            "asset/img/N23.jpg",
                            "Lorem Ipsumz",
                            "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the...",
                            North()),
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
