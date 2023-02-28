import 'package:course_app_ui/grid_list_container.dart';
import 'package:course_app_ui/widgets/container_one.dart';
import 'package:course_app_ui/widgets/container_three.dart';
import 'package:course_app_ui/widgets/container_two.dart';
import 'package:course_app_ui/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/UI_Design.png',
      'assets/images/App_Development.png',
      'assets/images/Ecommerce.png',
      'assets/images/Web_Design.png',
    ];
    final List<String> cname = [
      'UI Design',
      'App Development',
      'E-commerce',
      'Web Design',
    ];
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(18)),
                      // ignore: prefer_const_constructors
                      child: Center(
                        child: const Text(
                          'UI/UX',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(18)),
                      // ignore: prefer_const_constructors
                      child: Center(
                        child: const Text(
                          'Coding',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(18)),
                      // ignore: prefer_const_constructors
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        // ignore: prefer_const_constructors
                        child: Center(
                          child: const Text(
                            'APP Design',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const ContOne(),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(8.0), child: ContTwo()),
                    const Padding(
                        padding: EdgeInsets.all(8.0), child: ContThree()),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // ignore: prefer_const_literals_to_create_immutables
              Row(
                children: const [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Popular Course',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  )
                ],
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(4, (index) {
                    return Center(
                      child: GridContainer(
                        cname: cname[index],
                        image: images[index],
                      ),
                    );
                  }),
                ),
              )

              //column element end here
            ],
          ),
        ),
      ),
    );
  }
}
