import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PropertyHunt extends StatelessWidget {
  const PropertyHunt({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 550,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Locate Your New Home',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 400,
                        width: 450,
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                // Add Tabs
                                TabBar(
                                  labelColor: Colors.orange,
                                  unselectedLabelColor: Colors.blueGrey,
                                  indicatorColor: Colors.orange,
                                  dividerColor: Colors.orange,
                                  tabs: [
                                    Tab(text: "Buy"),
                                    Tab(text: "Rent"),
                                    Tab(text: "Shortlet"),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Tab(text: "Land"),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                // TabBarView to switch content based on the selected tab
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      _buildTabContent(), // Content for "Buy"
                                      _buildTabContent(), // Content for "Rent"
                                      _buildTabContent(), // Content for "Shortlet"
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build content for each tab
  Widget _buildTabContent() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.blueGrey,
              width: 2,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 2,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 2,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.blueGrey,
              width: 2,
            ),
          ),
        ),
      ],
    );
  }
}
