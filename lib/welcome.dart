import 'package:flutter/material.dart';
import 'package:food_delivery/pharmacies.dart';
import 'package:food_delivery/propertyHunt.dart';
import 'package:food_delivery/foodHunt/restaurant.dart';
import 'package:food_delivery/bottom-nav/account.dart';

class Welcome extends StatefulWidget {
  Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _selectedbottomindex = 0;

  // List of bottom tab pages
  final List<Widget> _bottomPages = [
    WelcomeMainContent(),
    Center(child: Text("Favourite")),
    Center(child: Text("Blog")),
    Center(child: Text("Deals")),
    Account(), // This stays within the Welcome screen now
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomPages[_selectedbottomindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.orange,
        unselectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
        currentIndex: _selectedbottomindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedbottomindex = index;
          });
        },
      ),
    );
  }
}

// Extracted main content of welcome tab into a separate widget
class WelcomeMainContent extends StatefulWidget {
  @override
  _WelcomeMainContentState createState() => _WelcomeMainContentState();
}

class _WelcomeMainContentState extends State<WelcomeMainContent> {
  int _selectedindex = 0;
  final PageController _pageController = PageController();

  final List<String> _menuItems = [
    'Restaurant',
    'Property Hunt',
    'Pharmacies',
    'Markets',
    'Stores',
    'Freelancing',
    'Gym',
    'Hotels',
  ];

  void _menuItemsTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 220),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueGrey,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Location & Notification Icons
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.location_on, color: Colors.black),
                      Icon(Icons.notifications, color: Colors.black),
                    ],
                  ),
                ),
                // Menu grid
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 65,
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: _menuItems.length,
                      itemBuilder: (context, index) {
                        final item = _menuItems[index];
                        return GestureDetector(
                          onTap: () => _menuItemsTapped(index),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: _selectedindex == index
                                  ? Colors.orange
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                item,
                                style: TextStyle(
                                    color: _selectedindex == index
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Logistics title
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Logistics'),
                ),
                // Search box
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      contentPadding: EdgeInsets.all(8),
                      hintText: 'Search your desired foods or restaurants',
                      hintStyle: TextStyle(fontSize: 13),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedindex = index;
          });
        },
        children: [
          Restaurant(),
          PropertyHunt(),
          Pharmacies(),
          Center(child: Text('Markets')),
          Center(child: Text('Stores')),
          Center(child: Text('Freelancing')),
          Center(child: Text('Gym')),
          Center(child: Text('Hotels')),
        ],
      ),
    );
  }
}
