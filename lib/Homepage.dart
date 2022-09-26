import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app_ui/category.dart';
import 'package:medical_app_ui/doctor.dart';
import 'package:medical_app_ui/main.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
      SafeArea(
          child: Container(
            height: 80,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: GoogleFonts.heebo(fontSize: 20),
                    ),
                    Text(
                      'Abhinav S Nair',
                      style: GoogleFonts.heebo(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: const Icon(Icons.person,color: Colors.white,),
                )
              ],
            ),
          ),
      ),
      const SizedBox(
          height: 0,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.shade200,
        ),
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Lottie.asset('assets/lottie.json', height: 150),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How do you feel?',
                    style: GoogleFonts.heebo(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'fill out your medical card\nright now',
                    style: GoogleFonts.heebo(
                        fontSize: 16, color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                        child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      const SizedBox(
          height: 5,
      ),
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 88, 88, 88),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  iconColor: Colors.white,
                  hintText: 'how can we help you',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 182, 182, 182)),
                  border: InputBorder.none),
            ),
          ),
      ),
      SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Category(image: 'https://cdn-icons-png.flaticon.com/512/65/65630.png', text: 'Dental'),
              Category(image: 'https://cdn-icons-png.flaticon.com/512/2118/2118442.png', text: 'Surgeon'),
              Category(image: 'https://cdn-icons-png.flaticon.com/512/822/822092.png', text: 'Medicine'),
            ],
          ),
      ),
      const SizedBox(height: 20,),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Doctor list',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text('See all',style: TextStyle(color: Colors.grey),)
          ],
      ),
      Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
          DoctorTile(image: 'https://www.freepnglogos.com/uploads/doctor-png/dentist-doctor-bhubaneswar-medical-doctor-36.png', rating: '3.8', name: 'Dr.Ganesh Gupta', category: 'Therapist'),
          DoctorTile(image: 'https://www.freepnglogos.com/uploads/doctor-png/doctor-align-with-lower-cost-and-increased-quality-alignment-21.png', rating: '4.6', name: 'Dr. Sajan baisil', category: 'Sergeon'),
          DoctorTile(image: 'https://www.freepnglogos.com/uploads/doctor-png/basic-ideas-for-logical-programs-for-doctor-home-loan-6.png', rating: '4.9', name: 'Dr.Shanil Venkilote ', category: 'Neurology'),
          ],
        ),
      )
    ]),
        ));
  }
}
