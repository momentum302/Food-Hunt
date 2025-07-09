import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/foodHunt/food.dart';
import 'package:food_delivery/object.dart';

class ExplorerList extends StatefulWidget {
  ExplorerList({super.key});

  @override
  State<ExplorerList> createState() => _ExplorerListState();
}

class _ExplorerListState extends State<ExplorerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blueGrey.shade50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Explore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.9,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: restaurantData.explorers.length,
                  itemBuilder: (context, int index) {
                    final exploreItem = restaurantData.explorers[index];
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            elevation: 2, // optional shadow
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Food()),
                                );
                              },
                              //splashColor: Colors.blue,
                              //highlightColor: Colors.blue,
                              //hoverColor: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              child: Ink.image(
                                image: AssetImage(exploreItem.imageUrl),
                                fit: BoxFit.cover,
                                width: 135,
                                height: 135,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 3,
                                      color: Colors.blueGrey,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text(exploreItem.name)),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
