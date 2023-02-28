import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text('Choose Your',
                          style: TextStyle(fontSize: 24, color: Colors.grey)),
                      const Text('Desire Course',
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30,
                          child: Image.asset('assets/images/profile.jpg',
                          fit: BoxFit.contain,
                          
                          ),
                          
                        ),
                      ),
                    ],
                  )
                ],
              );
  }
}