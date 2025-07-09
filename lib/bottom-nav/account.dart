import 'package:flutter/material.dart';
import 'package:food_delivery/cart.dart';
import 'package:food_delivery/welcome.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 160.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //SizedBox(height: 10),
                    Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.search_outlined),
                          SizedBox(width: 20),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Cart()),
                              );
                            },
                            icon: Icon(Icons.shopping_cart_outlined),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 35),
                Text(
                  'Welcome Momentum!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'momentum302@gmail.com',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.orange.shade300,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 16, 10),
                child: Text(
                  'MY PROPERTIES FORUM ACCOUNT',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 510,
                width: double.infinity,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        minLeadingWidth: 15,
                        leading: Icon(Icons.receipt_outlined),
                        title: Text('Orders'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      Divider(),
                      ListTile(
                        minLeadingWidth: 15,
                        leading: Icon(Icons.mail_outline),
                        title: Text('Inbox'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      Divider(),
                      ListTile(
                        minLeadingWidth: 15,
                        leading: Icon(Icons.reviews_outlined),
                        title: Text('Rating & Reviews'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      Divider(),
                      ListTile(
                        minLeadingWidth: 15,
                        leading: Icon(Icons.redeem),
                        title: Text('Vouchers'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      Divider(),
                      ListTile(
                        minLeadingWidth: 15,
                        leading: Icon(Icons.favorite_outline),
                        title: Text('Saved Items'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      Divider(),
                      ListTile(
                        minLeadingWidth: 15,
                        leading: Icon(Icons.person_pin),
                        title: Text('Followed Sellers'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      Divider(),
                      ListTile(
                        minLeadingWidth: 15,
                        leading: Icon(Icons.preview_outlined),
                        title: Text('Recently Viewed'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      Divider(),
                      ListTile(
                        minLeadingWidth: 15,
                        leading: Icon(Icons.person_search_outlined),
                        title: Text('Recently Searched'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                child: Text(
                  'MY SETTINGS',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 160,
                width: double.infinity,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text('Address Book'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      ListTile(
                        title: Text('Account Management'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                      ListTile(
                        title: Text('Close Account'),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                          //onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Welcome(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      'LOGOUT',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.orange.shade300,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
