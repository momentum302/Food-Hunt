import 'package:flutter/material.dart';
import 'package:food_delivery/foodHunt/restaurantdashboard.dart';

class Popular_Restaurants extends StatefulWidget {
  Popular_Restaurants({super.key});

  @override
  State<Popular_Restaurants> createState() => _Popular_RestaurantsState();
}

class _Popular_RestaurantsState extends State<Popular_Restaurants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Restaurants',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                //scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    child: Row(
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
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
