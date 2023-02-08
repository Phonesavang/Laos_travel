import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  // const Item({super.key});
  IconData icon;
  String name;
  Widget logation;
  Item(this.icon, this.name, this.logation);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => logation));
      },
      child: SizedBox(
        width: 260,
        height: 55,
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
  }
}
