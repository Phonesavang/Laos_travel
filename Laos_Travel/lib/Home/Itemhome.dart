import 'package:flutter/material.dart';

class Itemhome extends StatelessWidget {
  // const Itemhome({super.key});

  String img;
  String name;
  String city;
  Widget location;
  Itemhome(this.img, this.name, this.city, this.location);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => location));
      },
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        height: 80,
        width: 344,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.colorBurn)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    city,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Tiktok",
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                // ignore: prefer_const_constructors
                child: Icon(
                  Icons.navigate_next_outlined,
                  size: 35,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
