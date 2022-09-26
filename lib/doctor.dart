import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorTile extends StatelessWidget {
  final image;
  final rating;
  final name;
  final category;
  const DoctorTile({super.key, required this.image, required this.rating, required this.name, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 100,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
             CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                image,
              ),
            ),const SizedBox(
                  height: 10,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                
                const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Text(
                  rating,
                  style: const TextStyle(color: Colors.black54),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             Text(
              name,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
             Text(
              category,
              style: const TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
