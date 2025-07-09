import 'package:flutter/material.dart';

class Cuisines extends StatelessWidget {
  const Cuisines({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1 / 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Colors.blueGrey,
                      ),
                    ),
                    child: Image.asset(''),
                  ),
                  Center(child: Text('')),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
