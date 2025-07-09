import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_delivery/object.dart';

class Pharmacies extends StatefulWidget {
  Pharmacies({
    super.key,
  });

  @override
  State<Pharmacies> createState() => _PharmaciesState();
}

class _PharmaciesState extends State<Pharmacies> {
  int _currentIndex = 0;

  final List<String> advertImages = [
    '/images/advert_banner/kilimanjaro.png',
    '/images/advert_banner/speedbuka.png',
    '/images/advert_banner/kilimanjaro1.png',
    '/images/advert_banner/fiveStar.png',
    '/images/advert_banner/chickenRepublic.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0,
                    autoPlay: true,
                    enlargeCenterPage: false,
                    aspectRatio: 16 / 9,
                    viewportFraction:
                        0.8, // Fraction of the viewport occupied by each item
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: [
                    GestureDetector(
                        onTap: () {},
                        child: _advertbanner(
                          Image.asset(advertImages[0]),
                        )),
                    GestureDetector(
                        onTap: () {},
                        child: _advertbanner(Image.asset(advertImages[1]))),
                    GestureDetector(
                        onTap: () {},
                        child: _advertbanner(Image.asset(advertImages[2]))),
                    GestureDetector(
                        onTap: () {},
                        child: _advertbanner(Image.asset(advertImages[3]))),
                    GestureDetector(
                        onTap: () {},
                        child: _advertbanner(Image.asset(advertImages[4]))),
                  ],
                ),
              ),
              CarouselIndicator(
                activeColor: Colors.orange,
                color: Colors.grey,
                index: _currentIndex,
                count: advertImages.length,
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Pharmacies',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Container(
                //width: double.infinity,
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, int index) {
                    return Container(
                      height: 230,
                      width: 350,
                      child: Card(
                        color: Colors.white,
                        margin: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 150,
                                  color: Colors.blueGrey,
                                  child: Image.asset(''),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 13,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.favorite_outline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) {
                                        return Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 14,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: Card(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.restaurant,
                        size: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Find Nearby',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Pharmacies Near You',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          height: 50,
                          child: Card(
                            color: Colors.orange,
                            child: Center(
                              child: Text(
                                'See Location',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Medicine Nearby',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, int index) {
                    return Container(
                      width: 300,
                      child: Card(
                        margin: EdgeInsets.all(8),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      maxLines:
                                          1, // Ensure text doesn’t overflow
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                      maxLines:
                                          1, // Ensure text doesn’t overflow
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) {
                                          return Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 14,
                                          );
                                        },
                                      ),
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      maxLines:
                                          1, // Ensure text doesn’t overflow
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.add, color: Colors.orange),
                                onPressed: () {
                                  // Action for the add button
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New on Pharmacy Hunt',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Container(
                //width: double.infinity,
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, int index) {
                    return Container(
                      height: 230,
                      width: 350,
                      child: Card(
                        color: Colors.white,
                        margin: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 150,
                                  color: Colors.blueGrey,
                                  child: Image.asset(''),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 13,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.favorite_outline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Row(
                                    children: List.generate(
                                      5,
                                      (index) {
                                        return Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 14,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Reviewed Pharmacies',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Container(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, int index) {
                    return Container(
                      width: 300,
                      child: Card(
                        margin: EdgeInsets.all(8),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      maxLines:
                                          1, // Ensure text doesn’t overflow
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                      maxLines:
                                          1, // Ensure text doesn’t overflow
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) {
                                          return Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 14,
                                          );
                                        },
                                      ),
                                    ),
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      maxLines:
                                          1, // Ensure text doesn’t overflow
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.add, color: Colors.orange),
                                onPressed: () {
                                  // Action for the add button
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Pharmacies',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1065,
                child: ListView.builder(
                  //scrollDirection: Axis.vertical,
                  itemCount: restaurantData.allRestaurants.length,
                  itemBuilder: (context, int index) {
                    final restaurantlist = restaurantData.allRestaurants[index];
                    return Row(
                      children: [
                        Container(
                          height: 90,
                          width: 110,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: Colors.blueGrey,
                            ),
                            color: Colors.blueGrey,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              restaurantlist.imageUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurantlist.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                restaurantlist.address,
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
                              SizedBox(height: 10),
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
                        // Divider(
                        // thickness: Checkbox.width,
                        // ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _advertbanner(Image image) {
  return Container(
    width: double.infinity,
    child: Card(
      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            width: 3.0,
            color: Colors.blueGrey,
          )),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: image.image,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
