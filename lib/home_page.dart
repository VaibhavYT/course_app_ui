import 'package:course_app_ui/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search for Course',
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide.none),
                      contentPadding: const EdgeInsets.all(16),
                      suffixIcon: const Icon(Icons.search)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const Text(
                      'Catagory',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 80,
                    height: 90,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    width: 70,
                    height: 90,
                    color: Color.fromARGB(255, 64, 245, 255),
                  ),
                  Container(
                    width: 20,
                    height: 90,
                    color: Color.fromARGB(255, 255, 105, 64),
                  ),
                ],
              ),

              //column element end here
            ],
          ),
        ),
      ),
    );
  }
}
