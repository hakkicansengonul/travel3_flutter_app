import 'package:flutter/material.dart';
import 'package:travel3_flutter_app/screens/details_screen.dart';

class TravelChildren extends StatelessWidget {
  final String imgUrl;
  final String profileUrl;
  final String name;
  final String date;
  final String title;
  final String subtitle;

  const TravelChildren(this.imgUrl, this.profileUrl, this.name, this.date,
      this.title, this.subtitle);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsPage(
                      profileUrl: profileUrl,
                      name: name,
                      datedata: date,
                    )));
      },
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.deepPurple,
                                      width: 4.0,
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(profileUrl),
                                        fit: BoxFit.cover)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  Text(
                                    date,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.deepPurple,
                                    ),
                                    onPressed: () {}),
                                IconButton(
                                    icon: Icon(
                                      Icons.push_pin_rounded,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Row(
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      title,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                    Text(
                                      subtitle,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 15.0),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          color: Colors.amber,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5.0),
                                          child: Text(
                                            "540km",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 330.0, left: 70.0),
                child: Container(
                  height: 60.0,
                  width: 250.0,
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
