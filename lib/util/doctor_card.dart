import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorName;
  final String imagePath;
  final String doctorRole;
  final String rating;

  const DoctorCard(
      {super.key,
      required this.doctorName,
      required this.imagePath,
      required this.doctorRole,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, bottom: 100),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue.shade300,
          ),
          child: Center(
            child: Column(
              children: [
                //photo

                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    imagePath,
                    height: 100,
                  ),
                ),

                //rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Text(rating),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),

                //name
                Text(
                  doctorName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),

                //doctor role
                Text(doctorRole),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
