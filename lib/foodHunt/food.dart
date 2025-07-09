import 'package:flutter/material.dart';
import 'package:food_delivery/foodHunt/addons.dart';
import 'package:food_delivery/cart.dart';
import 'package:food_delivery/foodHunt/restaurantdashboard.dart';

class Food extends StatefulWidget {
  Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            double.infinity,
            100,
          ),
          child: AppBar(
            flexibleSpace: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(''),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cart()));
                              },
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text('FOOD'),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text('RESTAURANTS'),
                  ),
                ),
              ],
              dividerColor: Colors.orange,
              dividerHeight: 8,
              tabAlignment: TabAlignment.fill,
              labelColor: Colors.white,
              //unselectedLabelColor: Colors.white,
            ),
          ),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
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
                      itemCount: 3,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Divider(),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //height: 200,
                  child: Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()));
                      },
                      child: ListView.builder(
                        //scrollDirection: Axis.vertical,
                        itemCount: 2,
                        itemBuilder: (context, int index) {
                          return Row(
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
                                    Divider(),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.favorite_outline,
                                    size: 36,
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
          )
        ]),
      ),
    );
  }
}
