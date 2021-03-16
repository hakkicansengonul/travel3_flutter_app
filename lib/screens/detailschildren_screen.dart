import 'package:flutter/material.dart';
import 'package:travel3_flutter_app/screens/details_screen.dart';

class DetailsChildren extends StatelessWidget {
  final String imgUrl;
  final String profileUrl;
  final String name;
  final String date;
  final String title;
  final String subtitle;

  const DetailsChildren(this.imgUrl, this.profileUrl, this.name, this.date,
      this.title, this.subtitle);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: 400.0,
          width: double.infinity,
          //color: Colors.blue,
          child: Stack(
            children: [
              Container(
                height: 370.0,
                width: 390.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 5.0),
                        color: Colors.black.withOpacity(.7))
                  ],
                  borderRadius: BorderRadius.circular(90.0),
                  image: DecorationImage(
                      image: NetworkImage(imgUrl), fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 330.0, left: 80.0),
                child: Container(
                  height: 60.0,
                  width: 220.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0.0, 4.0),
                          color: Colors.black.withOpacity(.5))
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "50.2k",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "490",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.share_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "12",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
