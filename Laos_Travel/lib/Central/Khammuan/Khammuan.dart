import 'package:flutter/material.dart';
import 'package:my_app/Central/Khammuan/Phuphaman.dart';
import 'package:my_app/Central/Khammuan/Siokhdtabong.dart';
import 'package:my_app/Model/ModelCard.dart';
import 'package:my_app/Model/ModelSwitch.dart';
import 'package:my_app/UserPost.dart';

class Khammuan extends StatelessWidget {
  const Khammuan({super.key});

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
            "asset/img/C20.jpg",
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
                "ຄຳມ່ວນ",
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
                            "asset/img/C21.JPG",
                            "ພູຜາມາ່ນ",
                            " ຜາຫນາມໄຊເປັນສະຖານທີ່ຈຸດຊົມວິວທີສວຍງາມທີ່ສຸດຂອງເມືອງວັງວຽງ, ໃຊ້ເວລາພຽງ  20-30 ນາທີ, ທ່ານຈະໄປເຖິງຈຸດຊົມວິວ, "
                                "ທ່ານຈະມີຄວາມຮູ້ສືກທີ່ຢາກຖ່າຍຮູບກັບລົດຈັກທີ່ຢູ່ຈອດຢູ່...",
                            Phuphaman()),
                        ModelSwitch(
                            "ພະທາດສີໂຄດຕະບອງ",
                            " ຜາຫນາມໄຊເປັນສະຖານທີ່ຈຸດຊົມວິວທີສວຍງາມທີ່ສຸດຂອງເມືອງວັງວຽງ, ໃຊ້ເວລາພຽງ  20-30 ນາທີ, ທ່ານຈະໄປເຖິງຈຸດຊົມວິວ, "
                                "ທ່ານຈະມີຄວາມຮູ້ສືກທີ່ຢາກຖ່າຍຮູບກັບລົດຈັກທີ່ຢູ່ຈອດ...",
                            "asset/img/C22.JPG",
                            Siokhdtabong()),
                        ModelCard(
                            "asset/img/C23.jpg",
                            "ຖ້ຳນ້ຳລອດ",
                            "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the...",
                            Khammuan()),
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
