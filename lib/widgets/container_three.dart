import 'package:flutter/material.dart';

class ContThree extends StatelessWidget {
  const ContThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 110,
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Web_Design.png',
                  width: 90,
                  height: 80,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Web Design',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '24 lessons',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      '4.3',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 14.0, horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      '\$25',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.add_box,
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
