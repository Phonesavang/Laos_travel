// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_app/TotalWidget.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _fornkey =
        GlobalKey<FormState>(); // ignore: prefer_const_constructors
    return Scaffold(
      // appBar: AppBar(the),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                // color: Colors.red,
                alignment: Alignment.centerLeft,
                child: const Text("Sign in",
                    style: TextStyle(
                      color: Color(0xFF00abb3),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Form(
                  key: _fornkey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "ຊື່ຜູ້ໃຊ້ເກີດຂໍ້ຜິດພາດ";
                            }
                            return null;
                          },
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person,
                                size: 30, color: Colors.black54),
                            hintText: 'ປ້ອນຊື່ຜູ້ໃຊ້',
                            labelText: 'ກະລຸນາໃສ່ຊື່ຜູ້ໃຊ້',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "ລະຫັດໃຊ້ເກີດຂໍ້ຜິດພາດ";
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock,
                                size: 30, color: Colors.black54),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'ປ້ອນລະຫັດຜ່ານ',
                            labelText: 'ກະລຸນາລະໃສ່ຫັດຜ່ານ',
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              "ສ້າງບັນຊີຜູ້ໃຊ້",
                              style: TextStyle(color: Color(0xFF181818)),
                            ),
                            const Text(
                              "ລືມລະຫັດຜ່ານ",
                              style: TextStyle(color: Color(0xFF181818)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 58,
                            child: ElevatedButton(
                                onPressed: () {
                                  bool pass = _fornkey.currentState!.validate();
                                  if (pass) {
                                    _fornkey.currentState!.reset();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TotalWidget()));
                                  }
                                },
                                // ignore: sort_child_properties_last
                                child: const Text(
                                  "ເຂົ້າສູ່ລະບົບ",
                                  style: TextStyle(fontSize: 28),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF00abb3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                )))
                      ],
                    ),
                  )),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/300/300221.png",
                          width: 30,
                          height: 30,
                        ),
                        const Text(
                          "Continue with Google",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF181818)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/3128/3128304.png",
                          width: 40,
                          height: 40,
                        ),
                        const Text(
                          "Continue with Facebook",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF181818)),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
