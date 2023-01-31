
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/appoint_card.dart';
import '../components/doctor_card.dart';
import '../utils/config.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> docList = [
    {
      "icon": FontAwesomeIcons.userDoctor,
      "category": "General",
    },
    {
      "icon": FontAwesomeIcons.heartPulse,
      "category": "CardioLogy",
    },
    {
      "icon": FontAwesomeIcons.lungs,
      "category": "Respirations",
    },
    {
      "icon": FontAwesomeIcons.hand,
      "category": "Respirations",
    },
    {
      "icon": FontAwesomeIcons.personPregnant,
      "category": "Gynocology",
    },
    {
      "icon": FontAwesomeIcons.userDoctor,
      "category": "Dental",
    },
  ];
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Annie",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox (
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/Rectangle 5201 (1).png'),
                      ),
                    ),
                    Config.spaceMedium,

                  ],
                ),
                Text(
                  "Category",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Config.spaceSmall,
                SizedBox(
                  height: Config.heightSize * 0.06,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(docList.length, (index) {
                      return Card(
                        margin: EdgeInsets.only(right: 20),
                        color: Config.primaryColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FaIcon(
                                docList[index]['icon'],
                                color: Colors.white,
                              ),
                              SizedBox(width: 10,),
                              Text(docList[index]['category'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white
                                ),)
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Config.spaceSmall,
                Text(
                  "Appointment Today",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Config.spaceSmall,
                AppointCard(),
                Config.spaceSmall,
                Text(
                  "Top Doctor",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Config.spaceSmall,
                Column(
                  children: List.generate(10, (index) => const DoctorCard(
                    route: 'doc_details',
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
