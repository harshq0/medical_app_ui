import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/util/categorey_card.dart';
import 'package:medical_app/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: Column(
          children: [
            //app Bar
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Belly Max',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    ),
                  ),

                  //profile picture

                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: Colors.blue[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //how do you feel? -->card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade500,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      //animation picture
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue[100],
                        child: LottieBuilder.network(
                          'https://lottie.host/920565af-ebfc-4f3b-afdc-ba231b53e486/SbBlaRBnna.json',
                          height: 40,
                        ),
                      ),

                      const SizedBox(
                        width: 20,
                      ),

                      //how do you feel text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'How do you feel?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const Text(
                              'Fill out your medical Card right now!',
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Center(
                                  child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            const SizedBox(
              height: 25,
            ),

            //Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'how can we help you?',
                    hintStyle: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //horizontal listview
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Categoreycard(
                    text: 'ophthalmologist',
                    iconPath: 'lib/icons/testing-glasses.png',
                  ),
                  Categoreycard(
                    text: 'Denstist',
                    iconPath: 'lib/icons/tooth.png',
                  ),
                  Categoreycard(
                    text: 'Surgeon',
                    iconPath: 'lib/icons/surgeon.png',
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //doctor list
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorCard(
                    doctorName: 'Dr. James Mc',
                    imagePath: 'lib/images/doctor1.jpg',
                    doctorRole: 'ophthalmologist 4 y.e.',
                    rating: '4.5',
                  ),
                  DoctorCard(
                    doctorName: 'Dr. Robert Jenny',
                    imagePath: 'lib/images/doctor2.jpg',
                    doctorRole: 'Denstist  9 y.e.',
                    rating: '4.9',
                  ),
                  DoctorCard(
                    doctorName: 'Dr. Willam John',
                    imagePath: 'lib/images/doctor3.jpg',
                    doctorRole: 'Surgoen  5 y.e.',
                    rating: '4.5',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
