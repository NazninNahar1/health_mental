import 'package:flutter/material.dart';

import 'login.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.arrow_forward_outlined,
          color: Color(0xff6474FB),
        ),
      ),
      backgroundColor: const Color(0xff6474FB),
      body: Column(
        children: [
          Image.asset(
            "assets/Header.png",
            fit: BoxFit.fill,
            width: double.infinity,
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Get a proper",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "intervention against",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "depression",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Get an overview of how you are ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "performing and motivate yourself to ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "achieve even more ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
