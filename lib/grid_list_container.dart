import 'package:flutter/material.dart';

class GridContainer extends StatelessWidget {
  final String cname;
  final String image;
  const GridContainer({
    Key? key,
    required this.cname,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:4.0),
                  child: Text(
                    cname,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('24 lessons'),
                  Text('4.5 ⭐'),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: Image.asset(
                image,
                height: 100,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
