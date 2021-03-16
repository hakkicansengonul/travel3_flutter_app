import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel3_flutter_app/Animation/FadeAnimation.dart';
import 'package:travel3_flutter_app/screens/detailschildren_screen.dart';

class DetailsPage extends StatelessWidget {
  final String profileUrl;
  final String name;
  final String datedata;

  const DetailsPage({this.profileUrl, this.name, this.datedata});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 390.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    //color: Colors.blueAccent,
                    ),
                child: Stack(
                  children: [
                    Container(
                      height: 350.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0.0, 4.0),
                            color: Colors.deepPurple.withOpacity(.5),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(150.0),
                          bottomRight: Radius.circular(150.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://media.giphy.com/media/MabHkZLMcWPz7dFuBL/source.gif"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 170.0, top: 310.0),
                      child: FadeAnimation(
                        1.1,
                        Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurple,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0.0, 3.0),
                                  color: Colors.deepPurple.withOpacity(0.5),
                                ),
                              ]),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50.0, right: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FadeAnimation(
                            1.2,
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          FadeAnimation(
                              1.3,
                              Text(
                                "Amsterdam",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 90.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          FadeAnimation(
                            1.3,
                            Container(
                              height: 70.0,
                              width: 70.0,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepPurple, width: 2.0),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(profileUrl),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FadeAnimation(
                                1.4,
                                Text(
                                  name,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                              FadeAnimation(
                                1.4,
                                Text(
                                  datedata,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      FadeAnimation(
                        1.4,
                        Icon(
                          Icons.person_add_alt,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      1.4,
                      Text(
                        "Top 10 amazing\nPlaces To Visit In Amsterdam",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FadeAnimation(
                          1.5,
                          Row(
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
                              Text("4.5"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25.0),
                          child: Row(
                            children: [
                              FadeAnimation(
                                1.6,
                                Icon(
                                  Icons.location_on,
                                  color: Colors.deepPurple,
                                ),
                              ),
                              FadeAnimation(
                                1.6,
                                Text(
                                  "Amsterdam , Netherlands",
                                  style: TextStyle(fontSize: 10.0),
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
              Container(
                height: 400.0,
                width: double.infinity,
                child: ListView(
                  children: [
                    FadeAnimation(
                      1.7,
                      DetailsChildren(
                          "https://cdn.pixabay.com/photo/2019/03/06/12/58/amsterdam-4038204_1280.jpg",
                          "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4",
                          "Hakkı can ŞENGÖNÜL",
                          "1 WEEK AGO",
                          "Discover the Amsterdam's\nhidden gems",
                          "AMSTERDAM HOLLAND"),
                    ),
                    FadeAnimation(
                      1.7,
                      DetailsChildren(
                          "https://cdn.pixabay.com/photo/2010/12/13/10/13/amsterdam-2551_1280.jpg",
                          "https://cdn.pixabay.com/photo/2014/07/31/22/50/photographer-407068_1280.jpg",
                          "Mals Bumslde",
                          "2 WEEK AGO",
                          "Amsterdam events,\nattractions and more",
                          "AMSTERDAM HOLLAND"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
