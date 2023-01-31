
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../components/button.dart';
class AppointmentBooked extends StatelessWidget {
  const AppointmentBooked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Lottie.asset("assets/134734-waves.json",),flex: 3,),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text("Successfully Booked",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
            Spacer(),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
            child: Button(
              width: double.infinity,
              title: "Back to home",
              onPress: ()=>Navigator.of(context).pushNamed("main"),
              disble: false,
            )
              ,)
          ],
        ),
      ),
    );
  }
}
