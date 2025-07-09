import 'package:flutter/material.dart';
import 'package:food_delivery/foodHunt/addons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.horizontal(
                    start: Radius.elliptical(10, 10)),
                color: Colors.orange,
              ),
              child: Stack(children: [
                Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.horizontal(
                          start: Radius.elliptical(10, 10)),
                      color: Colors.orange,
                    ),
                    child: Image.asset('')),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 120,
                        height: 100,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(''),
                            SizedBox(height: 10),
                            Text(''),
                            Row(
                              children: [
                                Text(''),
                                SizedBox(width: 5),
                                Text(
                                  '',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.favorite_outline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(width: 5),
                              Text(''),
                            ],
                          ),
                          Text('5 ratings'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.orange,
                          ),
                          Text('Location'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                color: Colors.orange,
                              ),
                              Text(''),
                            ],
                          ),
                          Text('Delivery Time')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Divider(),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 300,
                    child: Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Addons(),
                              ));
                        },
                        child: ListView.builder(
                          //scrollDirection: Axis.vertical,
                          itemCount: 2,
                          itemBuilder: (context, int index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 90,
                                  width: 120,
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Row(
                                        children: List.generate(5, (index) {
                                          return Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 14,
                                          );
                                        }),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Divider(),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 24,
                                    ),
                                    SizedBox(height: 25),
                                    Icon(
                                      Icons.favorite_outline,
                                      size: 24,
                                    )
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
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
