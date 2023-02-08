import 'package:flutter/material.dart';

class Modelimgsc extends StatelessWidget {
  // const Modelimgsc({super.key});
  List<String> item;
  List<Widget> location;
  Modelimgsc(this.item,this.location);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      height: 100,
      child: ListView.builder(
          itemCount: item.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => location[index]));
              }),
              child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item[index],
                      height: 100,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  )),
            );
          }),
    );
  }
}
