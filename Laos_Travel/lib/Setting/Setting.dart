import 'package:flutter/material.dart';
import 'package:my_app/About/Edit.dart';
import 'package:my_app/Contact/Contact.dart';
import 'package:my_app/Setting/Item.dart';
import 'package:my_app/UserPost.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00abb3),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00abb3),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "ຕັ້ງຄ່າ",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFFffffff)),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                // margin: const EdgeInsets.only(top: 20.0),
                decoration: const BoxDecoration(
                    color: Color(0xFFf6f6f6),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0))),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Container(
                          width: 306,
                          height: 165,
                          decoration: BoxDecoration(
                            // color: Colors.lightGreenAccent.shade400,
                            color: Color(0xFFfffbfb),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Item(Icons.account_circle_outlined,
                                  "Edit Profile", Edit()),
                              ModelBorder(Icons.notifications_none_outlined,
                                  "Notification", Edit()),
                              Item(Icons.settings_outlined, "Setting", Edit()),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Container(
                          width: 306,
                          height: 220,
                          margin: const EdgeInsets.only(top: 10.0),
                          decoration: BoxDecoration(
                            // color: Colors.lightGreenAccent.shade400,
                            color: Color(0xFFfffbfb),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Item(Icons.lock_outline, "Privacy", Edit()),
                              ModelBorder(
                                  Icons.perm_device_information_outlined,
                                  "Devices",
                                  Edit()),
                              ModelBorder_2(
                                  Icons.key_outlined, "Passwords", Edit()),
                              Item(Icons.language, "Language", Edit()),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Container(
                          width: 306,
                          height: 165,
                          margin: const EdgeInsets.only(top: 15.0),
                          decoration: BoxDecoration(
                            // color: Colors.lightGreenAccent.shade400,
                            color: Color(0xFFfffbfb),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Item(Icons.help_outline, "Help", Edit()),
                              ModelBorder(Icons.account_box_outlined,
                                  "Contact Us", Contact()),
                              Item(Icons.logout, "Log out", Edit()),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
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

class ModelBorder extends StatelessWidget {
  // const Border({super.key});
  IconData icon;
  String name;
  Widget logation;
  ModelBorder(this.icon, this.name, this.logation);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => logation));
      },
      child: Container(
        width: 260,
        height: 55,
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 2, color: Color.fromRGBO(0, 0, 0, 0.1)),
          top: BorderSide(width: 2, color: Color.fromRGBO(0, 0, 0, 0.1)),
        )),
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      icon,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      name,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.navigate_next,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class ModelBorder_2 extends StatelessWidget {
  // const Border({super.key});
  IconData icon;
  String name;
  Widget logation;
  ModelBorder_2(this.icon, this.name, this.logation);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => logation));
      },
      child: Container(
        width: 260,
        height: 55,
        decoration: const BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 2, color: Color.fromRGBO(0, 0, 0, 0.1)),
        )),
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      icon,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      name,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.navigate_next,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
