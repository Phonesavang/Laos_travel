import 'package:flutter/material.dart';
import 'package:my_app/North/Huaphan/Bonamhon.dart';
import 'package:my_app/North/Huaphan/ThamNangAn.dart';
import 'package:my_app/North/North.dart';
import 'package:my_app/Model/ModelCard.dart';
import 'package:my_app/Model/ModelSwitch.dart';
import 'package:my_app/UserPost.dart';

class Huaphan extends StatelessWidget {
  // const LuangPrabang({super.key});
  String bg = "asset/img/Huaphan_1.jpg";

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
                "ຫົວພັນ",
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
                            "ຖ້ຳນາງອັ່ນ",
                            "ຖ້ຳ​ນາງ​ອັ່ນ​ເປັນ​ຖ້ຳ​ທຳ​ມະຊາດ​ຢູ່​ໃກ້ໆ​ບ້ານ​ນາ​ສົມ ເຂດ​ເທດສະ​ບານ​ຂອງ​ເມືອງ​ຈອມ​ເພັດ"
                                " ແຂວງ​ຫລວງ​ພະ​ບາງ​ໄປ​ທາງຟາກ​ຝັ່ງ​ຂວາ​ແມ່­ນ້ຳ​ຂອງ​ຫ່າງ ຈາກ​ຕົວ​ເມືອງ​ຫລວງ​ພະ​ບາງ​ໄປ"
                                " ປະ­ມານ 20 ... ",
                            ThamNangAn()),
                        ModelSwitch(
                            "ບໍ່ນ້ຳຮ້ອນ",
                            "ບໍ່ນ້ຳຮ້ອນ ຕັ້ງຢູ່ພາກຕາເວັນອອກຂອງເມືອງຄຳ ຫ່າງຈາກຕົວເມືອງໂພນສະຫວັນປະມານ 70KM ໄປຕາມທາງເລກ7 ແລ້ວແຍກເຂັົ້າໄປປະມານ 4-5KM... ",
                            "asset/img/BgS.jpg",
                            Bonamhon()),
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
