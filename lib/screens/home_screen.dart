import 'package:flutter/material.dart';
import 'package:travel3_flutter_app/Animation/FadeAnimation.dart';
import 'package:travel3_flutter_app/screens/travelchildren.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: FadeAnimation(
              1.1,
              Icon(
                Icons.menu_outlined,
                color: Colors.deepPurple,
              ),
            ),
            onPressed: () {}),
        title: FadeAnimation(
          1.1,
          Text(
            "traveling",
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          FadeAnimation(
              1.1,
              IconButton(
                  icon: Icon(
                    Icons.search_outlined,
                    color: Colors.deepPurple,
                  ),
                  onPressed: () {})),
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: FadeAnimation(
                1.1,
                Container(
                  height: 60.0,
                  width: 370.0,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FadeAnimation(
                        1.2,
                        listchild("Tokyo", Colors.grey),
                      ),
                      FadeAnimation(
                        1.2,
                        listchild("Amsterdam", Colors.white),
                      ),
                      FadeAnimation(
                        1.2,
                        listchild("Moskow", Colors.grey),
                      ),
                      FadeAnimation(
                        1.2,
                        listchild("London", Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 800.0,
              width: double.infinity,
              child: ListView(
                children: [
                  FadeAnimation(
                    1.3,
                    TravelChildren(
                        "https://cdn.pixabay.com/photo/2019/03/06/12/58/amsterdam-4038204_1280.jpg",
                        "https://avatars.githubusercontent.com/u/56843071?s=460&u=9285c334652104d0e8fab334bf7de72f35c1f729&v=4",
                        "Hakkı can ŞENGÖNÜL",
                        "1 WEEK AGO",
                        "Discover the Amsterdam's\nhidden gems",
                        "AMSTERDAM HOLLAND"),
                  ),
                  FadeAnimation(
                    1.3,
                    TravelChildren(
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
    );
  }
}

Widget listchild(String title, Color color) {
  return Container(
    height: 30.0,
    width: 90.0,
    child: Center(
        child: Text(
      title,
      style: TextStyle(color: color),
    )),
  );
}
