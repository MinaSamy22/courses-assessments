import 'package:flutter/material.dart';
import 'Onboarding_5.dart';

class Onboarding_4 extends StatelessWidget {
  final PageController controller;

  Onboarding_4({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset(
              'assets/images/background.jpeg',
              fit: BoxFit.cover,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 3),

              Image.asset(
                'assets/images/onboarding4.jpg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width * 0.7,
              ),

              SizedBox(height: 20),


              Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                "Future Gate Application",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(height: 10),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "And help you create an ATS-compatible CV using AI, ensuring it meets industry standards and increases your chances of passing automated screenings",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueAccent,
                  ),
                ),
              ),

              SizedBox(height: 20),


              ElevatedButton(
                onPressed: () {
                  // Use the controller to navigate to the next page
                  controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF196AB3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 85, vertical: 15),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),

              Spacer(flex: 3),
            ],
          ),
        ],
      ),
    );
  }
}
