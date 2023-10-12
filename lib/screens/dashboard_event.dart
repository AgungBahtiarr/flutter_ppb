// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ppb/model/user.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardEvent extends StatelessWidget {
  const DashboardEvent({super.key});
  @override
  Widget build(BuildContext context) {
    final dataUser = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 32, left: 32, top: 62),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome back!'),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Hello, ${dataUser.name.toString()} 👋',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                      child: const SizedBox(
                        height: 54,
                        width: 54,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Nearest company',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 1,
                      width: 165,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          CarouselSlider(
            options: CarouselOptions(height: 124, enlargeCenterPage: true),
            items: [1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: CarouselCard());
                },
              );
            }).toList(),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 51,
                ),
                Text(
                  'Popular Company',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 18,
                ),
                Column(
                  children: <Widget>[
                    CompanyCard(),
                    CompanyCard(),
                    CompanyCard(),
                    CompanyCard()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.black,
      height: 82,
      indicatorColor: Color.fromRGBO(234, 140, 0, 1),
      destinations: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.amber[800],
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
              child: Icon(Icons.home, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text('Home', style: TextStyle(color: Colors.white))
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Icon(Icons.search, color: Colors.white),
          SizedBox(
            height: 4,
          ),
          Text('Search', style: TextStyle(color: Colors.white))
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            child: Icon(Icons.bookmark, color: Colors.white),
          ),
          SizedBox(
            height: 4,
          ),
          Text('Saved', style: TextStyle(color: Colors.white))
        ]),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Icon(Icons.person, color: Colors.white),
          SizedBox(
            height: 4,
          ),
          Text('Profile', style: TextStyle(color: Colors.white))
        ]),
      ],
    );
  }
}

class CompanyCard extends StatelessWidget {
  const CompanyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Container(
        // width: 296,
        height: 84,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Container(
                  color: Colors.pink,
                  height: 62,
                  width: 62,
                  child: Image(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1611162616305-c69b3fa7fbe0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80'),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 27,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Company Name",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  'lorem ipsum dolor sit amet',
                  style: TextStyle(
                      fontSize: 12, color: Color.fromRGBO(110, 110, 110, 100)),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: 58,
                    height: 20,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text(
                          'Detail',
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.w600),
                        )))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.bookmark_add,
                    size: 30,
                  ),
                  Text(
                    "Banyuwangi",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: 132,
              height: 124,
              child: Image(
                  image: NetworkImage(
                'https://images.unsplash.com/photo-1611162616305-c69b3fa7fbe0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
              ))),
          SizedBox(
            width: 32,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Company',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Technology Company',
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(181, 181, 181, 100)),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 28,
                width: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {},
                    child: Text(
                      'Apply Now',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
