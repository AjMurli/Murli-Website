import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_landing_page/LandingScreen/LandingScreen.dart';
import 'package:responsive_landing_page/Navbar/Navbar.dart';
import 'package:responsive_landing_page/ProjectScreen/ProjectScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 11, 54, 1.0),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromARGB(255, 29, 10, 152),
              Color.fromRGBO(36, 11, 54, 1.0)
              // Color.fromRGBO(195, 20, 50, 1.0),
              // Color.fromRGBO(36, 11, 54, 1.0)
            ])),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: LandingScreen(),
              ),
              Center(
                  child: Text(
                "My Projects",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              )),
              SizedBox(
                height: 5,
              ),
              ProjectScreen(),
            ],
          ),
        ),
      ),
    );
  }
}


    // SmoothPageIndicator(
    //             controller: _controller, count: 5,
    //             // effect: SwapEffect(
    //             // effect: JumpingDotEffect(
    //             effect: ExpandingDotsEffect(
    //               dotColor: viewAllColor,
    //               activeDotColor: backg,
    //               dotHeight: 10,
    //               dotWidth: 10,
    //             ),
    //           ),