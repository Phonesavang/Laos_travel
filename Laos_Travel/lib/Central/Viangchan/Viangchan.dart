import 'package:flutter/material.dart';
import 'package:my_app/Central/Viangchan/Phamamsai.dart';
import 'package:my_app/Central/Viangchan/Thampukham.dart';
import 'package:my_app/Central/Vientiane/Vientiane.dart';
import 'package:my_app/Model/ModelCard.dart';
import 'package:my_app/Model/ModelSwitch.dart';
import 'package:my_app/UserPost.dart';

class Vienchan extends StatelessWidget {
  // const Vientiane({super.key});

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
            "asset/img/C40.JPG",
            fit: BoxFit.cover,
            color: Colors.tealAccent.withOpacity(0.2),
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
                "ວຽງຈັນ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
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
                            "asset/img/Thampukham_1.jpg",
                            "ຖ້ຳປູຄຳ",
                            "ຖ້ຳປູຄຳຕັ້ງຢູ່ ບ້ານນາທອງ , ເມຶອງວັງວຽງ , ແຂວງວຽງຈັນ ເຊິ່ງຫ່າງຈາກເທດສະບານເມືອງວັງວຽງ 3,5 ກິໂລແມັດປະຫວັດຄວາມເປັນມາ...",
                            Thampukham()),
                        ModelSwitch(
                            "ຜາໝາມໄຊ",
                            "ຜາຫນາມໄຊເປັນສະຖານທີ່ຈຸດຊົມວິວທີສວຍງາມທີ່ສຸດຂອງເມືອງວັງວຽງ, ໃຊ້ເວລາພຽງ  20-30 ນາທີ, ທ່ານຈະໄປເຖິງຈຸດຊົມວິວ​...",
                            "asset/img/C40.JPG",
                            Phamamsai()),
                        ModelCard(
                            "asset/img/Bulakou.jpg",
                            "ບຣາລາກູຣ",
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
