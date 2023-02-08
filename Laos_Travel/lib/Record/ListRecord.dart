import 'package:flutter/material.dart';

class ListRecord extends StatefulWidget {
  // const ListRecord({super.key});
  String img;
  String name;
  String title;
  Widget rout;

  ListRecord(this.img, this.name, this.title, this.rout);

  @override
  State<ListRecord> createState() => _ListRecordState();
}

var click = false;
var show = false;

class _ListRecordState extends State<ListRecord> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.img,
                    fit: BoxFit.cover,
                    height: 135,
                    width: 150,
                    color: Colors.black.withOpacity(0.2),
                    colorBlendMode: BlendMode.colorBurn,
                  ),
                ),
                Positioned(
                    top: 10,
                    right: 5,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8)),
                      child: InkWell(
                        onTap: () => setState(() {
                          click = !click;
                        }),
                        child: Icon(
                          click
                              ? Icons.favorite_border_outlined
                              : Icons.favorite,
                          color: click ? Colors.white : Colors.red,
                          size: 25,
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              width: 180,
              height: 135,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => widget.rout));
                    },
                    child: const Text(
                      "ກົດເບຶ່ງລາຍລະອຽດ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00abb3)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
