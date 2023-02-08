import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Boxhome extends StatefulWidget {
  // const Boxhome({super.key});
  List<String> img = [];
  Boxhome(this.img);

  @override
  State<Boxhome> createState() => _BoxhomeState();
}

class _BoxhomeState extends State<Boxhome> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: widget.img
                .map(
                  (e) => Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    margin: const EdgeInsets.only(top: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          e,
                          fit: BoxFit.cover,
                          width: 190,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: 200,
              // autoPlay: true,
              aspectRatio: 4.0,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) =>
                  setState(() => _current = index),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.img.map((e) {
            int index = widget.img.indexOf(e);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4)),
            );
          }).toList(),
        )
      ],
    );
  }
}
